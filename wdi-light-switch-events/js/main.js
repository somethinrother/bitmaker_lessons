var body = document.body
var button = body.querySelector('button');
var sentence = body.querySelector('.status');

button.addEventListener("click", function() {
    if (button.classList.contains('on')) {
        button.classList = 'switch off';
        body.classList = 'dark';
        sentence.innerText = 'Hey, who turned off the light?!';
    } else {
        button.classList = 'switch on';
        body.classList = 'light';
        sentence.innerText = "It's so bright in here!";
    }
});
