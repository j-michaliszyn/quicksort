% Implementacja Quicksorta w Prologu
% Autor korpo, https://github.com/korpo

project_dedalus_quicksort([],[]).
project_dedalus_quicksort([X],[X]).
project_dedalus_quicksort([],[]).
project_dedalus_quicksort([X|Xs],Ys) :-
  project_dedalus_quicksort_helper_partition(Xs,X,Left,Right),
  project_dedalus_quicksort(Left,Ls),
  project_dedalus_quicksort(Right,Rs),
  append(Ls,[X|Rs],Ys).

project_dedalus_quicksort_helper_partition([X|Xs],Y,[X|Ls],Rs) :- 
  X =< Y, 
  project_dedalus_quicksort_helper_partition(Xs,Y,Ls,Rs).
project_dedalus_quicksort_helper_partition([X|Xs],Y,Ls,[X|Rs]) :- 
  X  > Y, 
  project_dedalus_quicksort_helper_partition(Xs,Y,Ls,Rs).
project_dedalus_quicksort_helper_partition([],_,[],[]).
