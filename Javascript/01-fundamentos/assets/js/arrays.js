
// Se crea un arreglo de 10 posiciones, con la instancia del Array()
const arr = new Array(10);

// mas rapido
const arr1 = [];

let videoGames = ['Halo', 'Ninja gaiden', 'Rocket league', 'Fornais'];

console.table({ videoGames });

console.warn(videoGames[0]);


let thinksArray = [
    true,
    123,
    'Cesar',
    1+2, 
    function(){},
    ()=>{},
    { a:1 },
    ['X', 'Megaman', 'Zero', 'Dr. Light', ['Dr. Willy', 'Woodman']]
];

console.table({thinksArray});

console.log(thinksArray[0]);
console.log(thinksArray[7][4][1]);
