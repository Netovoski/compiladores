/* Programa bison para a linguagem especificada no exemplo 1 (E1).
 * Por enquanto, serve como driver para interagir com um programa flex
*/

digit [0-9]
letter [a-zA-Z]
under"_"

%%

%% digit+ { return NUM; }


[0-9]* { return NUM; }


padrao { acao }


%%
