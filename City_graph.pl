% Task1
%  Finding the path between different cities.

% Edges between cities
edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').
edge('Tabuk', 'Taif').
edge('Al-Qatif', 'Madinah').
edge('A-Qatif', 'Dammam').
edge('Dammam', 'Al-Qatif').
edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').

travel(From, To, Path):-
    path(From, To, [From], P),
    reverse(P, Path).

%path (From,To, Visited_List, Path_List)
path(X, X, P, P).
path(X, Y, V, P):-
    edge(X, Z),
    not(member(Z, V)),
    path(Z, Y, [Z|V], P).
