let character = {
    name: 'Spidy',
    codeName: 'CUARCUAR',
    alive: true,
    age: 23,
    cords: {
        lat: 33.034,
        lng: -118.70,

    },
    suits: ['one', 'two', 'three'],

};

console.warn(`Nombre: ${character.name}`);
console.warn(`Nickname: ${character.codeName}`);
console.warn(`Esta vivo?: ${character.alive}`);
console.warn(`Edad: ${character.age}`);
console.warn(`Latitud: ${character.cords.lat}`);
console.warn(`Longitud: ${character.cords.lng}`);
console.warn(`Trajes: ${character.suits[character.suits.length-1]}`);