let name = prompt('Como te llamas?', 'Ingresa tu name prro');

if (name == null || name == ''){
    alert('Te dije que ingresaras tu name, nmms')
    location.reload();
}else{
    let selection = confirm('Estas seguro de que tu name es: ' + name);
    if(selection){
        alert('Kmaras');
    }else{
        alert('Chale we');
        location.reload();
    }
}