class Coche {
    constructor(modelo, velocidad, antiguedad){
        this.modelo = modelo;
        this.velocidad = velocidad;
        this.antiguedad = antiguedad;
    }

    aumentarVelocidad(){
        this.velocidad += 1;
    };

    reducirVelocidad(){
        this.velocidad -=1;
    }
}

class Autobus extends Coche{
    constructor(modelo, velocidad, antiguedad, altura){
        super(modelo, velocidad, antiguedad);
        this.altura = altura;
    }
    
    mostrarAltura(){
        return "La altura del bus es =" + this.altura;
    }
}

var bus = new Autobus('micro', 20, 1920, 10)

var coche1 = new Coche('WV', 200, 1998);
var coche2 = new Coche('Audi', 192, 2018);
var coche3 = new Coche('Mercedes', 210, 2021);

console.log(coche1, coche2, coche3)

coche1.aumentarVelocidad();
coche1.aumentarVelocidad();
coche1.aumentarVelocidad();
coche1.aumentarVelocidad();
coche1.aumentarVelocidad();
coche1.aumentarVelocidad();

console.log(coche1);
console.log(bus);