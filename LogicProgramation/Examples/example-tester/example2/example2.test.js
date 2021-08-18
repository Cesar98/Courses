const palindromo = require('./example2');

test('Comprueba si una palabra es palindromo', ()=>{
    expect(palindromo).toBeDefined();
});

test('Es un palindromo', ()=>{
    expect(palindromo("otto")).toBe(true);
});
