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

/* console.warn(`Nombre: ${character.name}`);
console.warn(`Nickname: ${character.codeName}`);
console.warn(`Esta vivo?: ${character.alive}`);
console.warn(`Edad: ${character.age}`);
console.warn(`Latitud: ${character.cords.lat}`);
console.warn(`Longitud: ${character.cords.lng}`);
console.warn(`Trajes: ${character.suits[character.suits.length-1]}`); */

/* Mas detalles */
/* Para borrar propiedades */
delete character.age;
console.log(character);

/* Imprime las carac en pares */
let parEntries = Object.entries(character);
console.log(parEntries);

/* Permite no hacer cambios a las propiedades (Solo a las que estan drentro de un objeto en una propiedad) */
character.testA = true;
console.log(character);

Object.freeze(character);
character.testB = true;
console.log(character);

/* Trae los nombres de las propiedades */
let properties = Object.getOwnPropertyNames(character);
let values = Object.values(character);
console.log(properties, values);