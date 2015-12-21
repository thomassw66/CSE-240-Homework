* Database for family. It consists of facts and rules. */

/* Facts */
male(mark).
male(tom).
	male(eric).
        male(josh).
        male(austin).

female(jen).
female(beth).
	female(lisa).
        female(alice).
        female(alex).

father_of(mark, beth). /* mark is the father of beth */
        father_of(josh, eric).
        father_of(austin, alice).
        father_of(eric, jen).
        father_of(eric, mark).

mother_of(jen, tom). /* jen is the mother of tom */
        mother_of(lisa, eric).
        mother_of(alex, alice).
        mother_of(alice, jen).
        mother_of(alice, mark).


/* Rules */
is_male(X) :-
	male(X);
        father_of(X, _).

/* Question 1.2 */
is_female(X) :-
        female(X);
        mother_of(X, _).
		
/* Question 1.3 */
grandfather_of(X, Z) :-
        father_of(X, Y),
        (father_of(Y, Z) ; mother_of(Y, Z)).

grandmother_of(X, Z) :-
        mother_of(X, Y),
        (father_of(Y, Z) ; mother_of(Y, Z)).

/* Questions 1.4 */
sibling_of(X, Y) :-
        (mother_of(Z, Y) , mother_of(Z, X));
        (father_of(Z, Y) , father_of(Z, X)).

/* Question 1.5 */
parent_of(X, Y) :-
        mother_of(X, Y) ;
        father_of(X, Y).

/* Question 1.6 */
descendent_of(X, Y) :-
        parent_of(Y, X) ;
        (descendent_of(X, Z), descendent_of(Z, Y)).


