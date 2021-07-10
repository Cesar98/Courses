//dado un numero, devolder su tabla de multiplicar completa.
 function table(num) {
    console.log(`# Tabla del ${num} #`);
    for (let i = 1; i <= 10; i++) {
        console.log(`${i} x ${num} = ${i*num}`);
    }
};

table(2);
table(3);
table(5);
table(7);
table(8);
table(10);