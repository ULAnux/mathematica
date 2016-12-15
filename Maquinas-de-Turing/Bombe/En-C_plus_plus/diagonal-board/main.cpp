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

#define DIAGONAL_BOARD
#define FAST_CONFLICT_ELIM

// Fast conflict elimination
#ifdef FAST_CONFLICT_ELIM
#define ON_NEW_STECKER { if (steckerRegister.foundConflict()) return true; bRet = true; }
#else
// Full hypothesis exploration
#define ON_NEW_STECKER bRet = true;
// Immediate restart
// #define ON_NEW_STECKER return true;
#endif

class SteckerRegister 
{
protected:
	static char m_map[ROTORSIZE][ROTORSIZE+1];

	bool makeMapping(int c1, int c2);

public:
	bool addMapping(char c1, char c2) {
		int i1 = c1 - 'A';
		int i2 = c2 - 'A';

		if (isMapped(i1,i2))
			return false;

		return makeMapping(i1,i2);
	}

	void reset() {
		memset(m_map,0,sizeof(m_map));
	}

	bool foundConflict() const {
		for (int j = 0 ; j < ROTORSIZE ; ++j) {
			int nMappings = 0;
			for (int k = 0 ; k < ROTORSIZE ; ++k) {
				if (m_map[j][k])
					nMappings++;
			}
			if (nMappings > 1)
				return true;
		}
		return false;
	}

	bool isMapped(int c1, int c2) {
		return (m_map[c1][c2] != 0);
	}
};

class FastConflictSteckerRegister : public SteckerRegister
{
private:
	bool m_bConflict;

public:
	bool addMapping(char c1, char c2) {
		int i1 = c1 - 'A';
		int i2 = c2 - 'A';

		if (isMapped(i1,i2))
			return false;

		// keep special set of shortcut flags at end of array for each letter
		if ((m_map[c1 - 'A'][ROTORSIZE]) || (m_map[c2 - 'A'][ROTORSIZE])) {
			m_bConflict = true;
			return true;
		}
		m_map[c1 - 'A'][ROTORSIZE] = c2;
		m_map[c2 - 'A'][ROTORSIZE] = c1;

		return makeMapping(i1,i2);
	}

	void reset() {
		m_bConflict = false;
		SteckerRegister::reset();
	}

	bool foundConflict() const {
		return m_bConflict;
	}
};

char SteckerRegister::m_map[ROTORSIZE][ROTORSIZE+1];

#ifdef FAST_CONFLICT_ELIM
FastConflictSteckerRegister steckerRegister;
#else
SteckerRegister steckerRegister;
#endif

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
	bool m_traversed;

public:
	void reset() { m_traversed = false; }
	bool traversed() const { return m_traversed; }

	LetterTerminal* otherEnd(const MenuNode* thisEnd);
	MenuNode* otherEnd(const LetterTerminal* thisEnd);

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
	bool m_visited;
	char m_plainChar;
	char m_cypherChar;

public:
	BombeLetter() : m_visited(false) {
		m_pos = m_allLetters.insert(m_allLetters.end(),this);
		m_plain.letter(this);
		m_cypher.letter(this);
	}

	~BombeLetter() {
		m_allLetters.erase(m_pos);
	}

	void reset() { m_visited = false; }

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

	if (c1 == c2)
		return false;
	else {
#ifdef DIAGONAL_BOARD
		bool bRet = false;

		if (MenuNode::nodeFor(c1+'A')->activate(c2+'A'))
			ON_NEW_STECKER;

//		if (MenuNode::nodeFor(c2+'A')->activate(c1+'A'))
//			ON_NEW_STECKER;
#endif
		return true;
	}
}

LetterTerminal* MenuWire::otherEnd(const MenuNode* thisEnd) 
{
	m_traversed = true;
#ifdef LOGGING
	cout << "WI:" << thisEnd->c() << "->" << m_n1->letter()->nLetter() << endl;
#endif
	return m_n1;
}

MenuNode* MenuWire::otherEnd(const LetterTerminal* thisEnd) 
{
	m_traversed = true;
#ifdef LOGGING
	cout << "WI:" << thisEnd->letter()->nLetter() << "->" << m_n2->c() << endl;
#endif
	return m_n2;
}

bool MenuNode::activate(char c) const 
{
	bool bRet = false;

	// follow all menu wires to next rotor (NB: possibly multiple paths)
	for(vector<MenuWire*>::const_iterator iter = m_wires.begin(); iter != m_wires.end(); ++iter )
	{
		MenuWire * wire = *iter;
		if (!wire->traversed()) {
			if (wire->otherEnd(this)->activateFromRemote(c))
				ON_NEW_STECKER;
		}
	}

	return bRet;
}

bool LetterTerminal::activateFromLocal(char c) const 
{
	bool bRet = false;

	if (!m_wire->traversed()) {
		if (m_wire->otherEnd(this)->activate(c))
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
	if (m_visited)
		return false;

	m_visited = true;

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

	// generate hypothesis for output char
	if (steckerRegister.addMapping(c3,toChar))
		ON_NEW_STECKER;

	if (toTerm->activateFromLocal(c3))
		ON_NEW_STECKER;
		
	return bRet;
}

void findNoSteckerConflicts(Enigma& enigma, const char* code, const char* crib, const char* mask)
{
//	enigma.setIndicator("AAA");		// non-cheat
	enigma.setIndicator("HZK");		// debugging cheat
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
		if (nLetter >= BOMBELETTERS) {
			cerr << "WARNING: too many letters in menu - truncating" << endl;
			break;
		}

		if ((mask[i] == 'X') || (mask[i] == 'x'))
			cribMap[i] = nLetter++;
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

			MenuWire::resetAll();
			BombeLetter::resetAll();
			letters[nFirstChar].cypherTerm().activateFromRemote((char)(i+'A'));

			if (!steckerRegister.foundConflict()) {
				cout << currentInd << " ";
				cerr << currentInd << " ";
				for (int j = 0 ; j < ROTORSIZE ; ++j) {
					for (int k = j ; k < ROTORSIZE ; ++k) {

						if (steckerRegister.isMapped(j,k)) {
							cout << (char)(j + 'A') << (char)(k + 'A') << " ";
							cerr << (char)(j + 'A') << (char)(k + 'A') << " ";
						}
							
					}
				}
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
	else {
		// debugging test

		char szNewCypher[] = "UUYEXEVGIFE";
		char szNewPlain[]  = "OLFNULLNULL";

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