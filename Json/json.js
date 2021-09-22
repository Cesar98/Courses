var list = document.getElementById('list');

// https://github.com/toddmotto/public-apis#social

$(document).ready(function () {
    // $.getJSON("http://api.icndb.com/jokes/random/15", function(jokes) {
    //     jokes.value.forEach(joke => {
    //         createIl(joke.id, joke.joke)
    //     });
    // })
    $.ajax({
        url: "http://api.icndb.com/jokes/random/15",
        type: "GET",
        dataType: "json",
        success: function (jokes) {
            jokes.value.forEach(joke => {
                createIl(joke.id, joke.joke)
            });
        }
    });
});

function createIl(id, text) {
    let li = document.createElement('li');
    let a = document.createElement('a');

    a.innerText = id + ': ' + text;

    li.append(a);
    list.append(li);
}