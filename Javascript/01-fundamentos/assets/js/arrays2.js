let games = ['Halo', 'Rocket league', 'Clash of clans'];
console.log('Largo: ', games.length);
console.log('Primero:', games[0]);
console.log('Ultimo:', games[games.length-1]);

games.forEach((game, i, arr) => {
    console.table({game, i, arr});
});

console.log(games.push('Fortnite'), games);

// inserta en la primer posicion del arreglo
console.log(games.unshift('Ninja Gaiden'), games);

// console.log(games.pop(), games);

let position = 3;

// Elimina y crea un arreglo desde una posicion y un index para saber cuantos a partir de esa posicion
console.log(games.splice(position, 2));

// busca un elemento
console.log(games.indexOf('Halo'));
