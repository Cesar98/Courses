var jokes = [{
    "icon_url": "https://assets.chucknorris.host/img/avatar/chuck-norris.png",
    "id": "1vvH7UHQR1aq0FI1yLQUhw",
    "url": "https://api.chucknorris.io/jokes/1vvH7UHQR1aq0FI1yLQUhw",
    "value": "The day after Chuck Norris was born, his afterbirth enlisted as a Navy Seal."
}, {
    "icon_url": "https://assets.chucknorris.host/img/avatar/chuck-norris.png",
    "id": "3lnAWT0XTGGUOBKGUlUNNQ",
    "url": "",
    "value": "Chuck Norris is older than his own dad."
}, {
    "icon_url": "https://assets.chucknorris.host/img/avatar/chuck-norris.png",
    "id": "8svMaNbBQ4-7QPBf8hhAKA",
    "url": "",
    "value": "Chuck Norris found what Bono was looking for."
}, {
    "icon_url": "https://assets.chucknorris.host/img/avatar/chuck-norris.png",
    "id": "jWmHME3SR7iyur9tgaMaPA",
    "url": "https://api.chucknorris.io/jokes/jWmHME3SR7iyur9tgaMaPA",
    "value": "Chuck Norris understands every definition in the Oxford Thesaurus, except one; that on mercy."
}];

var list = document.getElementById('list');

jokes.forEach(joke=>{
    createIl(joke.icon_url, joke.value)
})

function createIl(icon, text) {
    let li = document.createElement('li');
    let a = document.createElement('a');

    a.href = icon;
    a.innerText = text;

    li.append(a);
    list.append(li);

}