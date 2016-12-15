/*
    main.cpp - C++ Turing Bombe Model
    =================================
    Copyright (C) 1997  Andy Carlson (andycarlson@attmail.com)

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

*/

/*
    USER NOTES
    ==========
    This application is known to compile with Microsoft Visual C++ 5.0
    Earlier versions were compiled with V4.2. Settings are as follows:-

    Macros - NDEBUG,WIN32,_CONSOLE,NOMINMAX,_AFXDLL,_MBCS
    Code generation - multithreaded DLL RTL
    Optimise for maximised speed

    STL Containers are used in several places. If your compiler does not 
    support STL, you will need to find anothe collection class to use.

    This file can be compiled in several configurations by changing the
    #define lines. The following are known to work:-

    DIAGONAL_BOARD - Turing Bombe, Diagonal Board, No shortcuts
    DIAGONAL_BOARD,TURING_SHORTCUT - as above, Turing shortcut (approx 26 times
        faster than without shortcut). This involves checking for 1 or 25 steckers
        implied by an input hypothesis.
    DIAGONAL_BOARD,CARLSON_SHORTCUT - 5 times faster (in software) than Turing
        Shortcut. This is a shortcut which is only helpful in software implementations.
    	It involves rejecting a hypothesis as soon as a single stecker conflict is 
    	detected.

    Menus are configured automatically. The user supplies the plain and cyphertext
    as command line arguments, together with an optional mask indicating which 
    character positions are to be included in the menu. Use 'x' to include a
    character, anything else (e.g. '.' to exclude). If no mask is supplied, the
    first 12 characters will be used.

    Some timings on a 166MHz Pentium MMX with 80Mb RAM under NT 4.0:-

    CT:   ZXRQNLEAWAGHZFRDNVCZRKDUXMPHRHGUWZL
    PT:   THERAININSPAINSTAYSMAINLYONTHEPLANE
    MASK: x...x..x.x..x.xxx...x.x

    For wheel order 321 only:-

      Diagonal Board, no shortcuts:-
      AAA AB CD IJ NN RR SS TT ZZ 
      258528355 chars in 913 seconds

      Turing Shortcut:-
      AAA AB CD IJ NN RR SS TT ZZ 
      9938575 chars in 34 seconds

      Carlson Shortcut:-
      AAA AB CD IJ NN RR SS TT ZZ 
      1608085 chars in 6 seconds

    For all orders of 5 wheels (60 orders):-

      Turing Shortcut:-
      596695340 chars in 2104 seconds
      55 stops

      Carlson Shortcut:-
      96399748 chars in 393 seconds
      55 stops

    With a better menu...

    CT:   ZXRQNLEAWAGHZFRDNVCZRKDUXMPHRHGUWZL
    PT:   THERAININSPAINSTAYSMAINLYONTHEPLANE
    MASK: x.x.x.xx.x..x.xxx...x.x

      ...
      Testing 3 2 1
      AAA AB CD EF IJ NN RR SS TT ZZ 
      ...
      107027861 chars in 460 seconds
	  1 stop
*/

#if _MSC_VER >= 1100
#include <iostream>
using namespace std;
#include <time.h>
#include <vector>
#include <list>
#include <algorithm>
#include "rotor.h"
#else
#include <iostream.h>
#include <time.h>
#include <vector.h>
#include <list.h>
#include <algo.h>
#include "rotor.h"
#endif

// functors for STL algorithms
template<class T> struct Delete {
	void operator()(T* t) { delete t; }
};

template <class T> struct CharIs { char m_c;
	CharIs(char c) : m_c(c) {}
	bool operator() (T* t) { return t->c() == m_c; }
};

template<class T> struct DisconnectAll {
	void operator()(T* t) { t->disconnectAll(); }
};

#ifdef _DEBUG
//#define LOGGING
#endif

// size of bombe
const int BOMBELETTERS=12;

// number of wheels to permute for wheel order
const int NWHEELS=5;

int nChars = 0;

// Configurations
// none                                - Basic Turing Bombe
// DIAGONAL_BOARD                      - Turing Bombe with Diagonal Board
// DIAGONAL_BOARD & TURING_SHORTCUT    - Turings 26x speed improvement
//
// CARLSON_SHORTCUT                  - Turing Bombe with software optimised algorithm
// DIAGONAL_BOARD & CARLSON_SHORTCUT - Bombe + Diagonal Board, optimised algorithm

#define DIAGONAL_BOARD
//#define TURING_SHORTCUT
//#define TURING_SHORTCUT_LOGGING
#define CARLSON_SHORTCUT
//#define KEEP_LOOKING

#ifdef TURING_SHORTCUT
#ifdef CARLSON_SHORTCUT
#error "TURING_SHORTCUT is not valid with CARLSON_SHORTCUT"
#endif
#endif


// Fast conflict elimination
#ifdef CARLSON_SHORTCUT
#define ON_NEW_STECKER { if (steckerRegister.foundConflict()) return true; bRet = true; }
#elif defined KEEP_LOOKING
#define ON_NEW_STECKER bRet = false;
#else
// Full hypothesis exploration
#define ON_NEW_STECKER bRet = true;
// Immediate restart
// #define ON_NEW_STECKER return true;
#endif

class MenuNode;

class SteckerRegister 
{
protected:
	static char m_map[ROTORSIZE][ROTORSIZE+1];

	bool makeMapping(int c1, int c2);
	bool activateDiagonal(int c1, int c2);

public:
	bool addMapping(char c1, char c2);

	void reset() {
		memset(m_map,0,sizeof(m_map));
	}

	bool foundConflict() const {
		for (int j = 0 ; j < ROTORSIZE ; ++j) {
			if (countFor(j+'A') > 1)
				return true;
		}
		return false;
	}

	bool isMapped(int c1, int c2) const {
		return (m_map[c1][c2] != 0);
	}

	int countFor(char c) const {
		int x = c - 'A';
		int nMappings = 0;
		for (int k = 0 ; k < ROTORSIZE ; ++k) {
			if (m_map[x][k])
				nMappings++;
		}
		return nMappings;
	}

	void dumpMap(ostream& o, char c) const {
		bool negate = (countFor(c) == 25);

		for (int k = 0 ; k < ROTORSIZE ; ++k) {
			if (isMapped(c - 'A', k) ^ negate)
				o << (char)(c) << (char)(k + 'A') << " ";
		}
	}

	void dumpMap(ostream& o) const {
		for (int j = 0 ; j < ROTORSIZE ; ++j) {
			for (int k = j ; k < ROTORSIZE ; ++k) {
				if (isMapped(j,k))
					o << (char)(j + 'A') << (char)(k + 'A') << " ";
			}
		}
	}
};

class FastConflictSteckerRegister : public SteckerRegister
{
private:
	bool m_bConflict;

public:

	bool addMapping(char c1, char c2);

	void reset() {
		m_bConflict = false;
		SteckerRegister::reset();
	}

	bool foundConflict() const {
		return m_bConflict;
	}
};

char SteckerRegister::m_map[ROTORSIZE][ROTORSIZE+1];

#ifdef CARLSON_SHORTCUT
FastConflictSteckerRegister steckerRegister;
#else
SteckerRegister steckerRegister;
#endif

bool FastConflictSteckerRegister::addMapping(char c1, char c2) {
	int i1 = c1 - 'A';
	int i2 = c2 - 'A';

	bool bRet = false;

	if (!isMapped(i1,i2)) {
		// keep special set of shortcut flags at end of array for each letter
		if ((m_map[c1 - 'A'][ROTORSIZE]) || (m_map[c2 - 'A'][ROTORSIZE])) {
			m_bConflict = true;
			return true;
		}
		m_map[c1 - 'A'][ROTORSIZE] = c2;
		m_map[c2 - 'A'][ROTORSIZE] = c1;

		makeMapping(i1,i2);
		bRet = true;
	}

	if (activateDiagonal(i1,i2))
		ON_NEW_STECKER;

	return bRet;
}

bool SteckerRegister::addMapping(char c1, char c2) {
	int i1 = c1 - 'A';
	int i2 = c2 - 'A';

	bool bRet = false;

	if (!isMapped(i1,i2)) {
		makeMapping(i1,i2);
		bRet = true;
	}
	
	if (activateDiagonal(i1,i2))
		ON_NEW_STECKER;

	return bRet;
}

class MenuWire;
class BombeLetter;

class Terminal
{
protected:
	vector<MenuWire*> m_wires;
public:
	void addWire(MenuWire* wire) { m_wires.push_back(wire); }

	void disconnectAll() {
		m_wires.erase(m_wires.begin(),m_wires.end());
	}
};

class MenuNode : public Terminal
{
private:
	static vector<MenuNode*> m_allNodes;
	char m_c;

	MenuNode() {}	// not allowed
	MenuNode(char c) : m_c(c) {}
public:
	char c() const { return m_c; }
	void c(char c) { m_c = c; }

	bool activate(char c) const;

	static void init() {
		for (int i = 0 ; i < ROTORSIZE ; ++i) {
			m_allNodes.push_back(new MenuNode('A' + i));
		}
	}

	static MenuNode* nodeFor(char c) {
		return m_allNodes[c - 'A'];
	}

	static void disconnectAllNodes() {
		for_each(m_allNodes.begin(),m_allNodes.end(),DisconnectAll<MenuNode>());
	}
};

vector<MenuNode*> MenuNode::m_allNodes;

class LetterTerminal : public Terminal
{
private:
	BombeLetter* m_letter;
	MenuWire * m_wire;
public:
	bool activateFromLocal(char c) const;
	bool activateFromRemote(char c) const;
	void letter(BombeLetter* bl) { m_letter = bl; }
	BombeLetter* letter() const { return m_letter; }
	void addWire(MenuWire* wire) { m_wire = wire; }
};

template<class T> struct Reset {
	void operator()(T* t) { t->reset(); }
};

class MenuWire 
{
private:
	static vector<MenuWire*> m_allWires;
	char m_c;
	LetterTerminal* m_n1;
	MenuNode* m_n2;
	char m_traversed[ROTORSIZE];

public:
	void reset() { memset(m_traversed,0,sizeof(m_traversed)); }
	bool traversed(char c) const { return (m_traversed[c - 'A'] != 0); }

	LetterTerminal* otherEnd(const MenuNode* thisEnd, char c);
	MenuNode* otherEnd(const LetterTerminal* thisEnd, char c);

	MenuWire(char c, LetterTerminal* n1, MenuNode* n2) 
		: m_c(c), m_n1(n1), m_n2(n2) 
	{
		m_allWires.push_back(this);
		m_n1->addWire(this);
		m_n2->addWire(this);
	}

	static void resetAll() {
		for_each(m_allWires.begin(),m_allWires.end(),Reset<MenuWire>());
	}

	static void deleteAll() {
		for_each(m_allWires.begin(),m_allWires.end(),Delete<MenuWire>());
		m_allWires.erase(m_allWires.begin(),m_allWires.end());
	}
};

vector<MenuWire*> MenuWire::m_allWires;

class BombeLetter 
{
private:
	static list<BombeLetter*> m_allLetters;
	list<BombeLetter*>::iterator m_pos;

	Scrambler m_scrambler;
	LetterTerminal m_plain;
	LetterTerminal m_cypher;
	int m_nLetter;
	char m_plainChar;
	char m_cypherChar;

public:
	BombeLetter() {
		m_pos = m_allLetters.insert(m_allLetters.end(),this);
		m_plain.letter(this);
		m_cypher.letter(this);
		reset();
	}

	~BombeLetter() {
		m_allLetters.erase(m_pos);
	}

	void reset() {
	}

	LetterTerminal& plainTerm() { return m_plain; }
	LetterTerminal& cypherTerm() { return m_cypher; }

	void plain(char c) { m_plainChar = c; new MenuWire(c,&m_plain,MenuNode::nodeFor(c)); }
	void cypher(char c) { m_cypherChar = c; new MenuWire(c,&m_cypher,MenuNode::nodeFor(c)); }

	bool activateFrom(const LetterTerminal* node, char c);

	static void resetAll() {
		for_each(m_allLetters.begin(),m_allLetters.end(),Reset<BombeLetter>());
	}

	void setupScrambler(const Scrambler& that, int incr) {
		m_scrambler.setupAs(that);
		for (int j = 0 ; j < incr ; ++j)
			m_scrambler.increment();
		m_nLetter = incr;
	}

	Scrambler& scrambler() { return m_scrambler; }

	int nLetter() const { return m_nLetter; }
};

list<BombeLetter*> BombeLetter::m_allLetters;

bool SteckerRegister::makeMapping(int c1, int c2)
{
	m_map[c1][c2] = 1;
	m_map[c2][c1] = 1;

#ifdef LOGGING
	cout << "MA:" << (char)(c1+'A') << (char)(c2+'A') << endl;
#endif

	return (c1 != c2);
}

bool SteckerRegister::activateDiagonal(int c1, int c2)
{
#ifdef DIAGONAL_BOARD
	if (c1 != c2) {
		bool bRet = false;

		if (MenuNode::nodeFor(c1+'A')->activate(c2+'A'))
			ON_NEW_STECKER;

		return bRet;
	}
#endif

	return false;
}

LetterTerminal* MenuWire::otherEnd(const MenuNode* thisEnd, char c) 
{
	m_traversed[c - 'A'] = 1;
#ifdef LOGGING
	cout << "WI:" << thisEnd->c() << "' (" << c << ")->" << m_n1->letter()->nLetter() << endl;
#endif
	return m_n1;
}

MenuNode* MenuWire::otherEnd(const LetterTerminal* thisEnd, char c) 
{
	m_traversed[c - 'A'] = 1;
#ifdef LOGGING
	cout << "WI:" << thisEnd->letter()->nLetter() << "->" << m_n2->c() << "' (" << c << ")" << endl;
#endif
	return m_n2;
}

bool MenuNode::activate(char c) const 
{
	bool bRet = false;

#ifdef LOGGING
	cout << "NO:" << m_c << "' (" << c << ")" << endl;
#endif

	// follow all menu wires to next rotor (NB: possibly multiple paths)
	for(vector<MenuWire*>::const_iterator iter = m_wires.begin(); iter != m_wires.end(); ++iter )
	{
		MenuWire * wire = *iter;
		if (!wire->traversed(c)) {
			if (wire->otherEnd(this,c)->activateFromRemote(c))
				ON_NEW_STECKER;
		}
	}

	return bRet;
}

bool LetterTerminal::activateFromLocal(char c) const 
{
	bool bRet = false;

	if (!m_wire->traversed(c)) {
		if (m_wire->otherEnd(this,c)->activate(c))
			ON_NEW_STECKER;
	}

	return bRet;
}

bool LetterTerminal::activateFromRemote(char c) const
{
	bool bRet = false;

	if (activateFromLocal(c))
		ON_NEW_STECKER;

	// 'sent current' to all connected nodes, now send to our own letter rotors
	if (m_letter->activateFrom(this,c))
		ON_NEW_STECKER;

	return bRet;
}


bool BombeLetter::activateFrom(const LetterTerminal* term, char c) 
{
	// encrypt via rotor
	// NB: symmetry means no worries about directionality here
	char c3 = m_scrambler.translate(c);
	nChars++;

	LetterTerminal* toTerm;
	char toChar;
	char fromChar;
	if (term == &m_plain) {
		toTerm = &m_cypher;
		toChar = m_cypherChar;
		fromChar = m_plainChar;
	}
	else {
		toTerm = &m_plain;
		toChar = m_plainChar;
		fromChar = m_cypherChar;
	}

#ifdef LOGGING
	cout << "SC:" << m_nLetter << " " << fromChar << " " << c << c3 << " " << toChar << endl;
#endif
	bool bRet = false;

	// generate hypothesis for input char
//	if (steckerRegister.addMapping(c,fromChar))
//		ON_NEW_STECKER;

	// generate hypothesis for output char
	if (steckerRegister.addMapping(c3,toChar))
		ON_NEW_STECKER;


	if (toTerm->activateFromLocal(c3))
		ON_NEW_STECKER;
		
	return bRet;
}

void findNoSteckerConflicts(Enigma& enigma, const char* code, const char* crib, const char* mask)
{
#ifdef _DEBUG
	enigma.setIndicator("AAA");		// non-cheat
//	enigma.setIndicator("HZK");		// debugging cheat
	enigma.setIndicator("PLN");		// debugging cheat
#else
	enigma.setIndicator("AAA");		// non-cheat
#endif
	enigma.clearStecker();
	enigma.rotorInSlot(1)->ringSetting(1);
	enigma.rotorInSlot(2)->ringSetting(1);
	enigma.rotorInSlot(3)->ringSetting(1);

	int nFirstChar = 0;
	int cribLen = strlen(crib);

	BombeLetter letters[BOMBELETTERS];

	int nLetter = 0;
	int cribMap[256];
	memset(cribMap,0,sizeof(cribMap));
	
	// map the crib letters to bombe letters
	for (int i = 0 ; i < cribLen ; ++i) {
		if ((mask[i] == 'X') || (mask[i] == 'x')) {

			if (nLetter >= BOMBELETTERS) {
				cerr << "WARNING: too many letters in menu - truncating" << endl;
				break;
			}
			cribMap[i] = nLetter++;
		}
	}

	nLetter = 0;

	for (i = 0 ; i < cribLen ; ++i) {

		if (nLetter >= BOMBELETTERS)
			break;

		if ((mask[i] == 'X') || (mask[i] == 'x')) {
			// set up crib (menu setup is done in BombeLetter::plain/cypher)
			letters[nLetter].setupScrambler(enigma.scrambler(),i);
			letters[nLetter].plain(crib[i]);
			letters[nLetter].cypher(code[i]);

			nLetter++;
		}
	}

	const char* currentInd = letters[0].scrambler().getIndicator();

	do {
		// increment the 'scramblers'
		for (i = 0 ; i < BOMBELETTERS ; ++i) {
			if (i >= nLetter)
				break;
			letters[i].scrambler().increment();
		}

		char c1 = code[nFirstChar];

		//take char x and generate 26 hypotheses for steckering
		for (i = 0 ; i < ROTORSIZE ; ++i) {

			steckerRegister.reset();

			//flag hypothesis
			steckerRegister.addMapping((char)(i+'A'),c1);

#ifdef LOGGING
			cout << "******** TRYING " << currentInd << " ********" << endl;
#endif

			bool again = false;

			do {
				MenuWire::resetAll();
				BombeLetter::resetAll();
				again = MenuNode::nodeFor(c1)->activate((char)(i+'A'));

#ifdef CARLSON_SHORTCUT
				again = false;		// fast conflict elim will keep returning true!
#endif

#ifdef LOGGING
				if (again)
					cout << "******** RETRYING " << currentInd << " ********" << endl;
#endif
			} while (again);


			// Results Analysis
#ifdef TURING_SHORTCUT

			// Shortcut - indicator wrong if not 1 or 25 mappings found for char 1
			int nMappings = steckerRegister.countFor(c1);

#ifdef TURING_SHORTCUT_LOGGING
			// Experimental tests
			static int nFirstCount = 0;
			if (i == 0)
				nFirstCount = nMappings;
#endif

			if (((nMappings != 1) || (steckerRegister.foundConflict()))
				&& (nMappings != 25)) {

#ifdef TURING_SHORTCUT_LOGGING
				if (i > 0) {
					cout << "Conflict on hypothesis " << i << " first count was " << nFirstCount << endl;
				}
#endif

				break;	// indicator wrong - only try first stecker hypothesis
			}
#endif

			if (!steckerRegister.foundConflict()) {
				cout << currentInd << " ";
				cerr << currentInd << " ";
				steckerRegister.dumpMap(cout);
				steckerRegister.dumpMap(cerr);
				cout << endl;
				cerr << endl;
			}
		}

		currentInd = letters[0].scrambler().getIndicator();

	} while (strcmp(currentInd,"AAA") != 0);

	MenuWire::deleteAll();
	MenuNode::disconnectAllNodes();
}


void solveWheelOrder(Enigma& enigma, const char* code, const char* crib, const char* mask)
{
	for (int i = 1 ; i <= NWHEELS ; ++i) {
		for (int j = 1 ; j <= NWHEELS ; ++j) {
			if (j == i)
				continue;
			for (int k = 1 ; k <= NWHEELS ; ++k) {
				if ((k == i) || (k == j))
					continue;

				enigma.removeRotors();
				enigma.fitRotor(i);
				enigma.fitRotor(j);
				enigma.fitRotor(k);

				cout << "Testing " << i << " " << j << " " << k << endl;
				cerr << "Testing " << i << " " << j << " " << k << endl;
				findNoSteckerConflicts(enigma, code, crib, mask);
			}
		}
	}
}

void cryptTest()
{
	Enigma enigma;

	enigma.fitRotor(1);
	enigma.fitRotor(2);
	enigma.fitRotor(3);

//	enigma.addSteckerWire('A','M');
//	enigma.addSteckerWire('E','T');
	enigma.rotor(1)->ringSetting(1);
	enigma.rotor(2)->ringSetting(1);
	enigma.rotor(3)->ringSetting(1);

	enigma.setIndicator("AAA");

	char szPlain[]  = "AAAAAAAAAA";
	char szCypher[] = "          ";

	char* szInIter = szPlain;
	char* szOutIter = szCypher;

	while (*szInIter)
		*szOutIter++ = enigma.translate(*szInIter++);

	cout << "Plain:  " << szPlain << endl;
	cout << "Cypher: " << szCypher << endl;
}

int main(int argc, char** argv)
{
    cout << "C++ Turing Bombe Model" << endl;
	cout << "Copyright (C) 1997 Andy Carlson" << endl;

	Enigma enigma;
	MenuNode::init();

	time_t ttStart;
	time(&ttStart);

	if (argc >= 4) {
		solveWheelOrder(enigma,argv[1],argv[2],argv[3]);
	}
	else if (argc >= 3) {
		solveWheelOrder(enigma,argv[1],argv[2],"XXXXXXXXXXXX");
	}
	else if ((argc >= 2) && (strcmp(argv[1],"crypttest") == 0))
	{
		cryptTest();
		return 0;
	}
	else if ((argc >= 2) && (strcmp(argv[1],"tstest") == 0))
	{
		enigma.fitRotor(3);
		enigma.fitRotor(2);
		enigma.fitRotor(1);
		findNoSteckerConflicts(enigma, "THERAININSPAINSTAYSMAINLYONTHEPLANE", "ZXRQNLEAWAGHZFRDNVCZRKDUXMPHRHGUWZL", "x...x..x.x..x.xxx...x.x");
	}

	else {
		// debugging test

		char szNewCypher[] = "UUYEXEVGIFE";
		char szNewPlain[]  = "OLFNULLNULL";
//		char szNewCypher[] = "IYXDWFKCMR";
//		char szNewPlain[]  = "THISISTEST";

		enigma.fitRotor(1);
		enigma.fitRotor(2);
		enigma.fitRotor(3);

		findNoSteckerConflicts(enigma, szNewCypher, szNewPlain,"XXXXXXXXXXXX");
	}

	time_t ttEnd;
	time(&ttEnd);
	double timeTaken = difftime(ttEnd,ttStart);
	cout << nChars << " chars in " << timeTaken << " seconds" << endl;

	return 0;
}