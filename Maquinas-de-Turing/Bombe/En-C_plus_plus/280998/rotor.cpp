/*
    rotor.cpp - C++ Enigma Model (not including middle wheel anomaly)
    ============================
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

#if _MSC_VER >= 1100
#include <iostream>
using namespace std;
#include "rotor.h"
#else
#include <iostream.h>
#include "rotor.h"
#endif

MovingRotor::MovingRotor(int num)
: m_number(num)
{
	m_ringSetting = 0;
	m_position = 0;
	m_notch = 0;
}

int MovingRotor::number() const
{
	return m_number;
}

void MovingRotor::indicatedLetter(char pos)
{
	m_position = pos - 'A';
}

char MovingRotor::indicatedLetter() const
{
	return (char) ('A' + m_position);
}

inline int MovingRotor::relpos(int pos) const
{
	int ans = pos + m_position - m_ringSetting;
	if (ans < 0)
		ans += ROTORSIZE;
	if (ans >= ROTORSIZE)
		ans -= ROTORSIZE;

	return ans;
}

inline int MovingRotor::abspos(int pos) const
{
	int ans = pos - m_position  + m_ringSetting;
	if (ans < 0)
		ans += ROTORSIZE;
	if (ans >= ROTORSIZE)
		ans -= ROTORSIZE;

	return ans;

	return ans;
}

int MovingRotor::translate(int pos)
{
	int tonext = abspos(m_fmap[relpos(pos)]);
	int fromnext = m_next->translate(tonext);
	int ans = abspos(m_rmap[relpos(fromnext)]);

	return ans;
}

void MovingRotor::increment()
{
	m_position++;
	if (m_position == ROTORSIZE)
		m_position = 0;
}

bool MovingRotor::atNotch() const
{
	return (m_position == m_notch);
}

void MovingRotor::nextRotor(Rotor* next)
{
	m_next = next;
}

void MovingRotor::prevRotor(Rotor* prev)
{
	m_prev = prev;
}

void MovingRotor::loadWiring(char* map)
{
	for (int i = 0 ; i < ROTORSIZE ; i++)
	{
		if ((map[i] < 'A') || (map[i] > 'Z'))
			throw BadWiring();

		m_fmap[i] = map[i] - 'A';
		m_rmap[m_fmap[i]] = i;
	}
}

void MovingRotor::ringSetting(int n)
{
	m_ringSetting = n-1;
}

int MovingRotor::ringSetting() const
{
	return m_ringSetting+1;
}

int Reflector::translate(int pos)
{
	return m_map[pos];
}

void Reflector::loadWiring(char* map)			   
{
	for (int i = 0 ; i < ROTORSIZE ; i++)
	{
		m_map[i] = -1;
	}

	for (i = 0 ; i < ROTORSIZE ; i++)
	{
		if ((map[i] < 'A') || (map[i] > 'Z'))
			throw BadWiring();

		if (m_map[i] == -1)
		{
			m_map[i] = map[i] - 'A';
			m_map[m_map[i]] = i;
		}
		else
		{
			if ((m_map[i] != map[i] - 'A') || (m_map[map[i] - 'A'] != i))
				throw BadWiring();
		}
	}
}

Stecker::Stecker()
{
	clear();
}

Stecker::Stecker(const Stecker& s)
{
	setupAs(s);
}

void Stecker::setupAs(const Stecker& s)
{
	memcpy(m_map,s.m_map,ROTORSIZE * sizeof(int));
}

void Stecker::addWiring(char a, char b)
{
	m_map[a-'A'] = b-'A';
	m_map[b-'A'] = a-'A';
}

void Stecker::clear()
{
	for (int i = 0 ; i < ROTORSIZE ; i++)
	{
		m_map[i] = i;
	}
}

int Stecker::translate(int pos)
{
	return m_map[pos];
}

void Stecker::dump(ostream& o) const
{
	for (int i = 0 ; i < ROTORSIZE ; i++)
	{
		if (m_map[i] > i) {
			o << (char)(i + 'A') << (char)(m_map[i] + 'A') << " ";
		}
	}
	o << endl;
}

Scrambler::Scrambler()
{
	setup();
}

Scrambler::Scrambler(const Scrambler& e)
{
	setup();
	setupAs(e);
}

void Scrambler::setupAs(const Scrambler& e)
{
	removeRotors();
	for (int i = 1; i <= ROTORSLOTS; ++i)
	{
		fitRotor(e.rotorInSlot(i)->number());
	}

	for (i = 1; i <= ROTORS; ++i)
		rotor(i)->ringSetting(e.rotor(i)->ringSetting());

	setIndicator(e.getIndicator());
}

Scrambler::~Scrambler()
{
	for (int i = 0 ; i < ROTORS ; ++i) {
		delete m_rotor[i];
	}
}

void Scrambler::setup()
{
	for (int i = 0 ; i < ROTORS ; ++i) {
		m_rotor[i] = new MovingRotor(i+1);
	}

	m_rotor[0]->loadWiring("EKMFLGDQVZNTOWYHXUSPAIBRCJ");
	m_rotor[1]->loadWiring("AJDKSIRUXBLHWTMCQGZNPYFVOE");
	m_rotor[2]->loadWiring("BDFHJLCPRTXVZNYEIWGAKMUSQO");
	m_rotor[3]->loadWiring("ESOVPZJAYQUIRHXLNFTGKDCMWB");
	m_rotor[4]->loadWiring("VZBRGITYUPSDNHLXAWMJQOFECK");

	m_rotor[0]->notch('Q');
	m_rotor[1]->notch('E');
	m_rotor[2]->notch('V');
	m_rotor[3]->notch('J');
	m_rotor[4]->notch('Z');

	m_refl.loadWiring(    "YRUHQSLDPXNGOKMIEBFZCWVJAT");
//	m_refl.loadWiring(    "FVPJIAOYEDRZXWGCTKUQSBNMHL");

	m_nFitted = 0;
}

void Scrambler::fitRotor(int n)
{
	m_fitted[m_nFitted] = m_rotor[n-1];

	if (m_nFitted) {
		m_fitted[m_nFitted]->nextRotor(m_fitted[m_nFitted-1]);
		m_fitted[m_nFitted-1]->prevRotor(m_fitted[m_nFitted]);
	}
	else {
		m_fitted[0]->nextRotor(&m_refl);
	}
	m_nFitted++;

	if (m_nFitted == ROTORSLOTS) {
		m_fitted[ROTORSLOTS-1]->prevRotor(&m_entry);
	}
}

void Scrambler::removeRotors()
{
	m_nFitted = 0;
}

void Scrambler::setIndicator(const char* sz)
{
	int i = 0;
	while(sz) 
	{
		m_fitted[i++]->indicatedLetter(*sz);
		++sz;

		if (i == ROTORSLOTS)
			break;
	}
}

const char* Scrambler::getIndicator() const
{
	for (int i = 0; i < ROTORSLOTS; ++i)
	{
		const_cast<Scrambler*>(this)->m_indicator[i] = m_fitted[i]->indicatedLetter();
	}

	return m_indicator;
}

char Scrambler::translate(char c)
{
	return (translateInt(c - 'A') + 'A');
}

int Scrambler::translateInt(int i)
{
	return m_fitted[m_nFitted-1]->translate(i);
}

void Scrambler::increment()
{
	if (m_fitted[m_nFitted-2]->atNotch()) {
		m_fitted[m_nFitted-3]->increment();
		m_fitted[m_nFitted-2]->increment();	// the anomaly
		m_fitted[m_nFitted-1]->increment();	// always
	}
	else {
		if (m_fitted[m_nFitted-1]->atNotch()) {
			m_fitted[m_nFitted-2]->increment();
			m_fitted[m_nFitted-1]->increment();	// the anomaly (& always anyway)
		}
		else {
			m_fitted[m_nFitted-1]->increment();	// always
		}
	}
}

void Scrambler::dump(ostream& o) const
{
	o << "Wheel Order: ";
	for (int i = 0; i < ROTORSLOTS; ++i)
		o << m_fitted[i]->number();
	o << endl;
	o << "Ring Settings: ";
	for (i = 0; i < ROTORSLOTS; ++i)
		o << m_fitted[i]->ringSetting() << " ";
	o << endl;
	o << "Indicator: " << getIndicator() << endl;
}

MovingRotor * Scrambler::rotor(int n) const
{
	return m_rotor[n-1];
}

MovingRotor * Scrambler::rotorInSlot(int n) const
{
	return m_fitted[n-1];
}

Enigma::Enigma()
{
}

Enigma::Enigma(const Enigma& e)
{
	setupAs(e);
}

void Enigma::setupAs(const Enigma& e)
{
	m_stecker.setupAs(e.m_stecker);
	m_scrambler.setupAs(e.m_scrambler);
}

Enigma::~Enigma()
{
}

void Enigma::fitRotor(int n)
{
	m_scrambler.fitRotor(n);
}

void Enigma::removeRotors()
{
	m_scrambler.removeRotors();
}

void Enigma::setIndicator(const char* sz)
{
	m_scrambler.setIndicator(sz);
}

const char* Enigma::getIndicator() const
{
	return m_scrambler.getIndicator();
}

char Enigma::translate(char c)
{
	m_scrambler.increment();
	char ans = translatePeek(c);
	return ans;
}

char Enigma::translatePeek(char c)
{
	int afterStecker = m_stecker.translate(c - 'A');
	int afterRotors = m_scrambler.translateInt(afterStecker);
	return (m_stecker.translate(afterRotors) + 'A');
}

void Enigma::increment()
{
	m_scrambler.increment();
}

void Enigma::dump(ostream& o) const
{
	m_scrambler.dump(o);
	o << "Stecker: ";
	m_stecker.dump(o);
}

void Enigma::addSteckerWire(char a, char b)
{
	m_stecker.addWiring(a,b);
}

void Enigma::clearStecker()
{
	m_stecker.clear();
}

MovingRotor * Enigma::rotor(int n) const
{
	return m_scrambler.rotor(n);
}

MovingRotor * Enigma::rotorInSlot(int n) const
{
	return m_scrambler.rotorInSlot(n);
}
