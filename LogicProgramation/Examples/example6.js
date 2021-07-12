function square(num) {
  let firstLast = "";
  let row = "";

  for (let j = 1; j <= num; j++) {
    firstLast += "*" ;
    row += j == 1 || j == num ? "*" : " ";
  }

  for (let i = 1; i <= num; i++) {
    console.log(i == 1 || i == num ? firstLast : row);
  }
}

square(20);