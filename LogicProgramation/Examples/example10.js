function stairs(num){
    let stair = '';
    for (let i = 0; i < num; i++) {
        console.log(stair += '[-]')
    }
}

stairs(5);