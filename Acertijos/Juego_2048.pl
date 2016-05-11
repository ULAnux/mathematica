%Original de: George Vlahavas


:- dynamic(boardScore/2).

% start the game
play :-
	generate(Board),
	showBoard(Board),
	game(Board).

% ai. Default depth is 4, but you can run it specifying any depth.
% Increasing depth will lead to better chances of winning.
% Depths>4 will need a LOT of RAM and CPU time...
ai :-
	ai(4).

ai(Depth) :-
	generate(Board),
	showBoard(Board),
	aigame(Board, Depth).

aigame(Board, _) :-
	max_list(Board, 2048),
	nl,write('AI succeded!'),nl,
	abort.
aigame(Board, _) :-
	noMoreMoves(Board),
	nl,write('AI failed :('),nl,
	abort.
aigame(Board, Depth) :-
	write('Scores:'),
	once(moveLeft(Board, L)),
	evaluate(Board, L, Depth, ScoreL),
	write(' L='),write(ScoreL),
	once(moveRight(Board, R)),
	evaluate(Board, R, Depth, ScoreR),
	write(' R='),write(ScoreR),
	once(moveUp(Board, U)),
	evaluate(Board, U, Depth, ScoreU),
	write(' U='),write(ScoreU),
	once(moveDown(Board, D)),
	evaluate(Board, D, Depth, ScoreD),
	write(' D='),write(ScoreD),
	selectMove(ScoreL, ScoreR, ScoreU, ScoreD, Move),
	aimove(Board, Move, NewBoard),
	showBoard(NewBoard),
	aigame(NewBoard, Depth).

aimove(Board, l, NewBoard) :-
	write(', Move: left'),nl,
	once(moveLeft(Board, B)),
	addNew(B, NewBoard).
aimove(Board, r, NewBoard) :-
	write(', Move: right'),nl,
	once(moveRight(Board, B)),
	addNew(B, NewBoard).
aimove(Board, d, NewBoard) :-
	write(', Move: down'),nl,
	once(moveDown(Board, B)),
	addNew(B, NewBoard).
aimove(Board, u, NewBoard) :-
	write(', Move: up'),nl,
	once(moveUp(Board, B)),
	addNew(B, NewBoard).

% the move with the highest score is selected
selectMove(ScoreL, ScoreR, ScoreU, ScoreD, r) :-
	ScoreR >= ScoreU,
	ScoreR >= ScoreD,
	ScoreR >= ScoreL.
selectMove(ScoreL, ScoreR, ScoreU, ScoreD, u) :-
	ScoreU >= ScoreR,
	ScoreU >= ScoreD,
	ScoreU >= ScoreL.
selectMove(ScoreL, ScoreR, ScoreU, ScoreD, d) :-
	ScoreD >= ScoreU,
	ScoreD >= ScoreR,
	ScoreD >= ScoreL.
selectMove(_, _, _, _, l).

% if the move is not possible, it gets a score of 0
evaluate(Board, NewBoard, _, 0) :-
	equal(Board, NewBoard).
% this, along with the evalNext and evalMoves predicates search the game
% space for the best move
evaluate(_, Board, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	boardScore(Board, BScore),
	asserta(boardScore(Board, BScore)),
	evalNext(Board, 0, NewLevel, S0),
	evalNext(Board, 1, NewLevel, S1),
	evalNext(Board, 2, NewLevel, S2),
	evalNext(Board, 3, NewLevel, S3),
	evalNext(Board, 4, NewLevel, S4),
	evalNext(Board, 5, NewLevel, S5),
	evalNext(Board, 6, NewLevel, S6),
	evalNext(Board, 7, NewLevel, S7),
	evalNext(Board, 8, NewLevel, S8),
	evalNext(Board, 9, NewLevel, S9),
	evalNext(Board, 10, NewLevel, S10),
	evalNext(Board, 11, NewLevel, S11),
	evalNext(Board, 12, NewLevel, S12),
	evalNext(Board, 13, NewLevel, S13),
	evalNext(Board, 14, NewLevel, S14),
	evalNext(Board, 15, NewLevel, S15),
	Score is 10*BScore+S0+S1+S2+S3+S4+S5+S6+S7+S8+S9+S10+S11+S12+S13+S14+S15.

evalNext([0,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4], 0, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([2,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],[4,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,0,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4], 1, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],[A1,4,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,0,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4], 2, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,2,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],[A1,A2,4,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,0,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4], 3, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,2,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],[A1,A2,A3,4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,0,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4], 4, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,2,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],[A1,A2,A3,A4,4,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,0,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4], 5, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],[A1,A2,A3,A4,B1,4,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,0,B4,C1,C2,C3,C4,D1,D2,D3,D4], 6, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,2,B4,C1,C2,C3,C4,D1,D2,D3,D4],[A1,A2,A3,A4,B1,B2,4,B4,C1,C2,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,B3,0,C1,C2,C3,C4,D1,D2,D3,D4], 7, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,B3,2,C1,C2,C3,C4,D1,D2,D3,D4],[A1,A2,A3,A4,B1,B2,B3,4,C1,C2,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,B3,B4,0,C2,C3,C4,D1,D2,D3,D4], 8, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,B3,B4,2,C2,C3,C4,D1,D2,D3,D4],[A1,A2,A3,A4,B1,B2,B3,B4,4,C2,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,B3,B4,C1,0,C3,C4,D1,D2,D3,D4], 9, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,B3,B4,C1,2,C3,C4,D1,D2,D3,D4],[A1,A2,A3,A4,B1,B2,B3,B4,C1,4,C3,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,0,C4,D1,D2,D3,D4], 10, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,2,C4,D1,D2,D3,D4],[A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,4,C4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,0,D1,D2,D3,D4], 11, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,2,D1,D2,D3,D4],[A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,4,D1,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,0,D2,D3,D4], 12, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,2,D2,D3,D4],[A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,4,D2,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,0,D3,D4], 13, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,2,D3,D4],[A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,4,D3,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,0,D4], 14, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,2,D4],[A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,4,D4],NewLevel,Score).
evalNext([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,0], 15, Level, Score) :-
	Level >= 0,
	NewLevel is Level - 1,
	evalMoves([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,2],[A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,4],NewLevel,Score).
evalNext(_, _, _, 0).

evalMoves(B2, B4, Level, Score) :-
	once(moveLeft(B2, B2L)),
	evaluate(B2, B2L, Level, S2L),
	once(moveLeft(B4, B4L)),
	evaluate(B4, B4L, Level, S4L),
	once(moveRight(B2, B2R)),
	evaluate(B2, B2R, Level, S2R),
	once(moveRight(B4, B4R)),
	evaluate(B4, B4R, Level, S4R),
	once(moveUp(B2, B2U)),
	evaluate(B2, B2U, Level, S2U),
	once(moveUp(B4, B4U)),
	evaluate(B4, B4U, Level, S4U),
	once(moveDown(B2, B2D)),
	evaluate(B2, B2D, Level, S2D),
	once(moveDown(B4, B4D)),
	evaluate(B4, B4D, Level, S4D),
	Score is 9*(S2L+S2R+S2U+S2D)+S4L+S4R+S4U+S4D.

% calculates the score for a board. The score is just the sum of squares
% of all tile values
boardScore(Board, Score) :-
	squared(Board, Squared),
	sum_list(Squared, Score).

% square every value of a list
squared([], []).
squared([H1|T1], [H2|T2]) :-
	H2 is H1 * H1,
	squared(T1,T2).

% if you reach 2048, you win!
game(Board) :-
	max_list(Board, 2048),
	nl,write('GANASTE!'),nl,
	abort.
% if there's nowhere to go, you lose
game(Board) :-
	noMoreMoves(Board),
	nl,write('Perdiste. :('),nl,
	abort.
% play next move
game(Board) :-
	nl,write('______________________ '),
	get_single_char(X),
	move(Board, X, B),
	% if you try to move the board towards a certain direction and it
	% stays the same, it means you can't move that way.
	(equal(Board, B) ->
		(write('Movimiento no valido.'),nl,game(Board)) ;
		% otherwise make the move, add a new tile and go on with playing
		(addNew(B,NewBoard),showBoard(NewBoard),game(NewBoard))).

% check if there are no more available moves
noMoreMoves(Board) :-
	once(moveLeft(Board, X)),
	equal(Board, X),
	once(moveRight(Board, Y)),
	equal(Board, Y),
	once(moveUp(Board, Z)),
	equal(Board,Z),
	once(moveDown(Board, W)),
	equal(Board,W).

% checks if two lists are equal
equal([],[]).
equal([H1|T1],[H2|T2]) :-
	H1 == H2,
	equal(T1,T2).

% up
move(Board, 119, NewBoard) :-
	write(' '),nl,nl,
	once(moveUp(Board, NewBoard)).
move(Board, 107, NewBoard) :-
	write(' '),nl,nl,
	once(moveUp(Board, NewBoard)).

% down
move(Board, 115, NewBoard) :-
	write(' '),nl,nl,
	once(moveDown(Board, NewBoard)).
move(Board, 106, NewBoard) :-
	write(' '),nl,nl,
	once(moveDown(Board, NewBoard)).

% left
move(Board, 97, NewBoard) :-
	write(' '),nl,nl,
	once(moveLeft(Board, NewBoard)).
move(Board, 104, NewBoard) :-
	write(' '),nl,nl,
	once(moveLeft(Board, NewBoard)).

% right
move(Board, 100, NewBoard) :-
	write(' '),nl,nl,
	once(moveRight(Board, NewBoard)).
move(Board, 108, NewBoard) :-
	write(' '),nl,nl,
	once(moveRight(Board, NewBoard)).

% quit
move(_, 113, _) :-
	write('quit'),nl,nl,
	write('Bye...'), nl,nl,
	abort.

% help
move(Board, 63, _) :-
	write('help'),nl,
	printHelp,
	game(Board).

% show board
move(Board, 98, _) :-
	write('show board'),nl,
	showBoard(Board), game(Board).

% everything else
move(Board, _, _) :-
	nl,write('Illegal move! Press ? for help.'),nl,
	game(Board).

% generates an empty board with 2 random numbers in random positions
generate(Board):-
	addNew([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],B),
	addNew(B,Board).

% rotate the board to the right
rotateRight([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],[E1,E2,E3,E4,F1,F2,F3,F4,G1,G2,G3,G4,H1,H2,H3,H4]) :-
	E1 is D1,
	E2 is C1,
	E3 is B1,
	E4 is A1,
	F1 is D2,
	F2 is C2,
	F3 is B2,
	F4 is A2,
	G1 is D3,
	G2 is C3,
	G3 is B3,
	G4 is A3,
	H1 is D4,
	H2 is C4,
	H3 is B4,
	H4 is A4.

% rotate the board to the left
rotateLeft([A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4],[E1,E2,E3,E4,F1,F2,F3,F4,G1,G2,G3,G4,H1,H2,H3,H4]) :-
	E1 is A4,
	E2 is B4,
	E3 is C4,
	E4 is D4,
	F1 is A3,
	F2 is B3,
	F3 is C3,
	F4 is D3,
	G1 is A2,
	G2 is B2,
	G3 is C2,
	G4 is D2,
	H1 is A1,
	H2 is B1,
	H3 is C1,
	H4 is D1.

% only moveLeft is actually implemented. Every other move just rotates
% the board first and then uses moveLeft.
moveUp(Board, NewBoard):-
	rotateLeft(Board, Temp1),
	moveLeft(Temp1, Temp2),
	rotateRight(Temp2, NewBoard).

moveDown(Board, NewBoard):-
	rotateRight(Board, Temp1),
	moveLeft(Temp1, Temp2),
	rotateLeft(Temp2, NewBoard).

moveRight(Board, NewBoard):-
	rotateLeft(Board, Temp1),
	rotateLeft(Temp1, Temp2),
	moveLeft(Temp2, Temp3),
	rotateRight(Temp3, Temp4),
	rotateRight(Temp4, NewBoard).

moveLeft([], []).
% X|X|X|X -> 2X|2X|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X3 \= 0,
	X1 == X2,
	X3 == X4,
	N1 is X1 + X2,
	N2 is X3 + X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X, N).
% X|X|X|Y -> 2X|X|Y|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X1 == X2,
	X2 == X3,
	N1 is X1 + X2,
	N2 is X3,
	N3 is X4,
	N4 is 0,
	moveLeft(X,N).
% X|X|Y|Z -> 2X|Y|Z|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X1 == X2,
	X3 \= 0,
	N1 is X1 + X2,
	N2 is X3,
	N3 is X4,
	N4 is 0,
	moveLeft(X,N).
% X|Y|Z|Z -> X|Y|2Z|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 \= 0,
	X1 \= X2,
	X2 \= X3,
	X3 == X4,
	N1 is X1,
	N2 is X2,
	N3 is X3 + X4,
	N4 is 0,
	moveLeft(X,N).
% X|Y|Y|Z -> X|2Y|Z|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 \= 0,
	X2 == X3,
	N1 is X1,
	N2 is X2 + X3,
	N3 is X4,
	N4 is 0,
	moveLeft(X,N).
% 0|0|0|X -> X|0|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 == 0,
	X2 == 0,
	X3 == 0,
	N1 is X4,
	N2 is 0,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% 0|0|X|X -> 2X|0|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 == 0,
	X2 == 0,
	X3 == X4,
	N1 is X3 + X4,
	N2 is 0,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% 0|0|X|Y -> X|Y|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 == 0,
	X2 == 0,
	N1 is X3,
	N2 is X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% 0|X|0|X -> 2X|0|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 == 0,
	X3 == 0,
	X2 == X4,
	N1 is X2 + X4,
	N2 is 0,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% 0|X|0|Y -> X|Y|0|)
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 == 0,
	X3 == 0,
	N1 is X2,
	N2 is X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% 0|X|X|Y -> 2X|Y|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 == 0,
	X2 == X3,
	N1 is X2 + X3,
	N2 is X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% 0|X|Y|Z -> X|Y|Z|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 == 0,
	X2 \= 0,
	X3 \= 0,
	X2 \= X3,
	X3 \= X4,
	N1 is X2,
	N2 is X3,
	N3 is X4,
	N4 is 0,
	moveLeft(X,N).
% 0|X|Y|Y -> X|2Y|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 == 0,
	X2 \= 0,
	X3 == X4,
	N1 is X2,
	N2 is X3 + X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% X|0|Y|Y -> X|2Y|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 == 0,
	X3 == X4,
	N1 is X1,
	N2 is X3 + X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% X|0|X|Y -> 2X|Y|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 == 0,
	X1 == X3,
	N1 is X1 + X3,
	N2 is X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% X|0|Y|Z -> X|Y|Z|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 == 0,
	X3 \= 0,
	N1 is X1,
	N2 is X3,
	N3 is X4,
	N4 is 0,
	moveLeft(X,N).
% X|0|0|X -> 2X|0|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 == 0,
	X3 == 0,
	X1 == X4,
	N1 is X1 + X4,
	N2 is 0,
	N3 is 0,
	N4 is 0,
	N4 is 0,
	moveLeft(X,N).
% X|0|0|Y -> X|Y|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 == 0,
	X3 == 0,
	N1 is X1,
	N2 is X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% X|X|0|Y -> 2X|Y|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X1 == X2,
	X3 == 0,
	N1 is X1 + X2,
	N2 is X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% X|Y|0|Y -> X|2Y|0|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 \= 0,
	X1 \= X2,
	X3 == 0,
	X2 == X4,
	N1 is X1,
	N2 is X2 + X4,
	N3 is 0,
	N4 is 0,
	moveLeft(X,N).
% X|Y|0|Z -> X|Y|Z|0
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 \= 0,
	X3 == 0,
	N1 is X1,
	N2 is X2,
	N3 is X4,
	N4 is 0,
	moveLeft(X,N).
% X|Y|Z|W -> X|Y|Z|W
moveLeft([X1,X2,X3,X4|X], [N1,N2,N3,N4|N]) :-
	X1 \= 0,
	X2 \= 0,
	X3 \= 0,
	N1 is X1,
	N2 is X2,
	N3 is X3,
	N4 is X4,
	moveLeft(X,N).

% Replaces one the zeros in the board with a 2 or a 4 randomly
addNew(Board, NewBoard) :-
	countZeros(Board, Z),
	position(Z, P),
	twoOrFour(N),
	replaceZero(Board, P, N, NewBoard).

% Counts the numbers of zeros in a list and puts it in N
countZeros([], 0).
countZeros([H|T], N) :-
	H == 0,
	countZeros(T, W),
	N is W + 1.
countZeros([H|T], N) :-
	H \= 0,
	countZeros(T, N).

% Selects which zero on the board to replace with the new number
position(NumberOfZeros, P) :-
	P is random(NumberOfZeros).

% Generates a 2 or a 4 randomly. There is a 90% change of a 2 and a 10%
% chance of a 4.
twoOrFour(N) :-
	P is random(10),
	P < 9 -> N is 2 ; N is 4.

% Replaces the occurence P of 0 with the number N.
% replaceZero(List, P, N, NewList)
replaceZero([],_,_,[]).
replaceZero([H1|T1], P, N, [H2|T2]) :-
	H1 == 0,
	P == 0,
	H2 is N,
	replaceZero(T1, -1, N, T2).
replaceZero([H1|T1], P, N, [H2|T2]) :-
	H1 == 0,
	P > 0,
	Pn is P - 1,
	H2 is H1,
	replaceZero(T1, Pn, N, T2).
replaceZero([H1|T1], P, N, [H2|T2]) :-
	H1 == 0,
	P < 0,
	H2 is H1,
	replaceZero(T1, P, N, T2).
replaceZero([H1|T1], P, N, [H2|T2]) :-
	H1 \= 0,
	H2 is H1,
	replaceZero(T1, P, N, T2).

% show the current board on screen
showBoard([]).
showBoard([H|T]) :-
	printNumber(H),
	showBoard1(T).
showBoard1([H|T]) :-
	printNumber(H),
	showBoard2(T).
showBoard2([H|T]) :-
	printNumber(H),
	showBoard3(T).
showBoard3([H|T]) :-
	printNumber(H),nl,
	showBoard(T).

% prints the help message
printHelp :-
	nl,write('Izquierda: h/a, Abajo: j/s, Arriba: k/w, Derecha: l/d, Mostrar tablero: b, Salir: q, Ayuda: ?'),nl.

% prints the number in formatted output, keeping everything aligned
printNumber(N) :-
	N >= 1000,
	write(' '),write(N).
printNumber(N) :-
	N >= 100,
	write('  '),write(N).
printNumber(N) :-
	N >= 10,
	write('   '),write(N).
printNumber(N) :-
	N == 0,
	write('    _').
printNumber(N) :-
	write('    '),write(N).
