class BPMenu : public Menu
{
private:
	int m_argc;
	char** m_argv;
	char* charAt(int i);
public:
	BPMenu(int argc, char** argv) 
	: m_argc(argc),m_argv(argv)
	{}
	virtual char getFirstChar();
	virtual int getLetterCount();
	virtual void wireBombe(BombeLetter letters[], Enigma& prototype);
};

char* BPMenu::charAt(int i)
{
	return m_argv[i];
}

char BPMenu::getFirstChar()
{
	return charAt(0)[0];
}

int BPMenu::getLetterCount()
{
	return m_argc;
}

void BPMenu::wireBombe(BombeLetter letters[], Enigma& prototype)
{
	cout << "MENU: ";

	// find lowest middle and right wheel offsets (NB : for middle wheel N..Z < A..M)
	int mwLowest = 26;
	int rwLowest = 26;

	for (int i = 0 ; i < getLetterCount() ; ++i) {
		int iMW = (charAt(i)[2] - 'A' + 13) % 26;	// 'A...' -> 13... , '...Z' -> ...12
		if (iMW < mwLowest)
			mwLowest = iMW;

		if (iMW == mwLowest) {
			int iRW = charAt(i)[3] - 'A';
			if (iRW < rwLowest)
				rwLowest = iRW;
		}
	}

	for (i = 0 ; i < getLetterCount() ; ++i) {

		if (i >= BOMBELETTERS) {
			cerr << "WARNING: too many letters in menu - truncating" << endl;
			break;
		}

		int iMW = (charAt(i)[2] - 'A' + 13) % 26;
		int iRW = charAt(i)[3] - 'A';

		int nTurnover = iMW - mwLowest;
		int offset = (nTurnover * 26) + iRW - rwLowest;

		// set up m_crib (menu setup is done in BombeLetter::plain/cypher)
		letters[i].setupScrambler(prototype.scrambler(),offset,nTurnover);
		letters[i].plain(charAt(i)[0]);
		letters[i].cypher(charAt(i)[1]);

		cout << charAt(i)[0];
		cout << charAt(i)[1];
		cout << letters[i].scrambler().getIndicator() << " ";
	}

	cout << endl;
}
