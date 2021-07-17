function watchedMovies(){
    let moviesArray = [{pelicula : 'Space jam', director: 'Lebron James', vista : false}
    , {pelicula : 'Black widow', director: 'Marvel', vista : false}
    , {pelicula : 'HTSDO', director: 'Rusos', vista : true}];
    let completeText = '';

    for(movie of moviesArray){
        completeText += movie.vista 
        ? `Ya viste ${movie.pelicula} de ${movie.director} \n`
        : `Te falta por ver ${movie.pelicula} de ${movie.director} \n` ;
    }

    return completeText;
}

console.log(watchedMovies());