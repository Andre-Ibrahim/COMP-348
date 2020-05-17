family(
person(john, cohen, date(17,may,1990), unemployed),
person(lily, cohen, date(9,may,1990), unemployed),[] ).
family(
person(john, armstrong, date(7,may,1988), unemployed),
person(lily, armstrong, date(29,may,1961), unemployed),[]).
family(
person(eric, baily, date(7,may,1963), works( bbc, 2200)),
person(grace, baily, date(9,may,1965), works( ntu, 1000)),
[ person(louie, baily, date(25,may,1983), unemployed) ] ).
family(
person(eric, fox, date(27,may,1970), works(bbc, 25200)),
person(grace, fox, date(9,may,1971), works(ntbu, 13000)),
[ person(louie, fox, date(5,may,1993), unemployed) ]).
family(
person(tom, cohen, date(7,may,1960), works( bcd, 15200)),
person(ann, cohen, date(29,may,1961), unemployed),
[ person(pat, cohen, date(5,may,1983), works(bcd, 15200)),
person(jim, cohen, date(5,may,1983), works(bcd, 15200))]).
family(
person(bob, armstrong, date(12,oct,1977), works(ntnu, 12000)),
person(liz,armstrong, date(6,oct,1975), unemployed),
[ person(bob, armstrong, date(6,oct,1999), unemployed),
person(sam,armstrong, date(8,oct,1998), unemployed) ]).
family(
person(tony, oliver, date(7,may,1960), works( bbc, 35200)),
person(anny, oliver, date(9,may,1961), unemployed),
[ person(patty, oliver, date(8,may,1984), unemployed),
person(jimey, oliver, date(5,may,1983), unemployed) ]).
family(
person(jack, fox, date(27,may,1940), unemployed),
person(jane, fox, date(9,aug,1941), works( ntu, 13050)),
[ person(andy, fox, date(5,aug,1967), works(com, 12000)),
person(kai, fox, date(5,jul,1969), unemployed) ]).
husband(X) :- family( X, _, _).
wife(X) :- family( _, X, _).
child(X) :- family( _, _, Children), member(X, Children).
exists(Person) :- husband(Person); wife(Person); child(Person).
dateofbirth(person(_, _, Date, _), Date).
salary(person(_, _, _, works(_, S)), S).
salary(person(_, _, _, unemployed), 0).

list_person_to_income([], 0).
list_person_to_income([H|T], I):- salary(H, N), list_person_to_income(T, R), I is R + N.

totalIncome(family(X,Y, L), Tot):- R = [X|[Y|L]], list_person_to_income(R, Tot).

get_LastName(person(_, Y, _,_), Y).

less_than2k([]).
less_than2k([H|T]):- salary(H, S), S < 2000, less_than2k(T). 


/* 	b)
	family(X, Y, L),
	totalIncome(family(X, Y, L), I),
	get_LastName(X, Z),
	write('The '),
	write(Z),
	write(' family makes '),
	write(I),
	write(' dollars'),
	nl,
	fail.	*/

/*	c)
	family(X, Y, Z),
	L = [X|[Y|Z]],
	less_than2k(L),
	get_LastName(X, Last),
	write('the family '),write(Last), write('makes less than 2000 dollars per person'),nl,
	write(X),nl,
	write(Y),nl,
	write(Z),nl,
	fail.

*/

/*	d)
	family(X, Y, Z),
	list_person_to_income(Z, Kids),
	list_person_to_income([X, Y], Parents), 
	Kids > Parents,
	get_LastName(X, L),
	write("In the family "), write(L), write(" the children make more than the parents"),nl,
	write('Father: '),write(X),nl,
	write('Mother: '),write(Y),nl,
	write('Children: '),write(Z),nl,
	fail.


*/
