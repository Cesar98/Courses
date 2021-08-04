let date = new Date;
let hour = date.getHours();
let min = date.getMinutes();
let secs = date.getSeconds();

function incSecs(sec) {
    setTimeout(() => {
        process.stdout.write(`${hour}:${sec == 59 ? min++ : min}:${sec}\n`)
        return sec == 59 ? incSecs(0) : incSecs(sec + 1);
    }, 1000)

}

incSecs(secs);