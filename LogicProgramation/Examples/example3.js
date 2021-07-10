function coincidences(text, word){
    let count = 0;

    //let clean_text = word.replace(/[!.,?¡¿]/gi, '');

    let separate = text.split(' ');
    separate.forEach(element => {
        element == word ? count++ : count;
    });
    return count;
}

console.log(coincidences('La palabra PALABRA esta bien referida en esta palabra', 'kk'));

//Observaciones, me falto limpiar la palabra para quitar comas y algunos signos

//------------------------------------------------------------------//
//toLowerCase() es un metodo que sirve para pasar un texto a minusculas
//replace es un metodo para reemplazar caracteres o signos de un texto en otro.
//includes devuelve un tru cuando un texto se incluye en otro
//hace un mapa para poner un contador en todas las palabras.
function coincidencias(frase, busqueda){
    let texto_limpio = frase.toLowerCase().replace(/[!.,?¡¿]/gi, '');
    let resultado = 0;
    if(texto_limpio.includes(busqueda)){
        let palabras = texto_limpio.split(' ');
        let mapa = {};
        for(let palabra of palabras){
            if(mapa[palabra]){
                mapa[palabra]++;
            }else{
                mapa[palabra] = 1;
            }
        }
        return mapa[busqueda];
    }else{
        resultado = 0;
    }
    return resultado;
}

console.log(coincidencias('Hola, HOLA? hola buenas COMO estan? bien? bien gracias', 'kk'));

