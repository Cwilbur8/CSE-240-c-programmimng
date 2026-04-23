% Q 1.1
4 colors

% Q 1.2

neighbors(arizona, california).
neighbors(arizona, new_mexico).
neighbors(arizona, nevada).
neighbors(arizona, colorado).
neighbors(arizona, utah).

neighbors(california, oregon).
neighbors(california, nevada).


neighbors(colorado, new_mexico).
neighbors(colorado, wyoming).
neighbors(colorado, utah).

neighbors(idaho, montana).
neighbors(idaho, oregon).
neighbors(idaho, nevada).
neighbors(idaho, wyoming).
neighbors(idaho, utah).
neighbors(idaho, washington).

neighbors(montana, wyoming).

neighbors(nevada, oregon).
neighbors(nevada, utah).

neighbors(new_mexico, utah).

neighbors(oregon, washington).

neighbors(utah, wyoming).

% red, blue, green, purple
colors(alaska, red).
colors(arizona, blue).
colors(california, green).
colors(colorado, blue).
colors(hawaii, red).
colors(idaho, green).
colors(montana, blue).
colors(nevada, red).
colors(new_mexico, green).
colors(oregon, purple).
colors(utah, purple).
colors(washington, red).
colors(wyoming, red). 

% Q 1.3
adjacent(state1, state2):- neighbors(state1, state2).
adjacent(state1, state2):- neighbors(state2, state1).

% Q 1.4
miscolor(state1, state2):- adjacent(state1, state2), colors(state1, Color), colors(state2, Color).

%Q 1.5
q:-miscolor(state1, state2).

