## QUESTION 1
document.body.querySelector(".profile-image");
img.src = "file:///home/james/Desktop/bitmaker/projects/panda-the-bear-js/images/Dave-Mustaine.jpg";

## QUESTION 1 - 2
img = document.querySelector('.photography');
img.src = 'http://picsum.photos/325/225/?'

## QUESTION 2
header = document.querySelector('h1.highlight');
header.innerText = "It's Dave Mustane!";

## QUESTION 3
subheads = document.body.querySelectorAll("h3.info-title");
subheads[1].innerText = "Rust in Peace";

## QUESTION 4
document.body.style.backgroundColor = 'tomato';

## QUESTION 5
highlights = document.body.querySelectorAll('.highlight');
highlights.forEach(function(highlight){
    highlight.style.color = 'tomato';
});

## QUESTION 6
h_one = document.body.querySelector('h1');
h_one.style.fontFamily = 'monotype';

## QUESTION 7
icons = document.body.querySelectorAll('.action-icon-bg');
icons.forEach(function(icon){
    icon.style.backgroundColor = 'white';
});

## QUESTION 8
name_field = document.body.querySelector('#name');
name_field.placeholder = 'Identify yourself';

## QUESTION 9
message.placeholder = 'State your business';

## QUESTION 10
bio_name_field = document.body.querySelector('.bio-info-name');
bio_name_field.innerText = 'Your Nemesis';

## QUESTION 11
email.placeholder = 'koalathebear@gmail.com';

## QUESTION 12
submit.value = 'En Garde!';

## QUESTION 13
submit.disabled = true;

## QUESTION 14
name_field = document.body.querySelector('.bio-info-name');
name_field.innerText = '';

location_field = document.body.querySelector('.bio-info-location');
location_field.innerText = '';

phone_field = document.body.querySelector('.bio-info-phone');
phone_field.innerText = '';

## PART 2 ##

## QUESTION 1
document.querySelectorAll('.bar-default')[2].remove();

## QUESTION 2
portfolio = document.querySelector('.portfolio-container');
pika = document.querySelectorAll('.portfolio-image > img')[1];
chu = pika.cloneNode();
portfolio.appendChild(chu);

## QUESTION 3

function pikachuMultiplier() {
  portfolio = document.querySelector('.portfolio-container');
  pika = document.querySelectorAll('.portfolio-image > img')[1];
  chu = pika.cloneNode();
  portfolio.appendChild(chu);
};

## QUESTION 4
var listItem = document.createElement('li');
var leftSpan = document.createElement('span');
var lastUpdated = document.createTextNode('Page last updated on');
leftSpan.appendChild(lastUpdated);
listItem.appendChild(leftSpan);
var newDate = new Date(2017, 11, 22);
newDate = newDate.toString();
dateText = document.createTextNode(newDate);
var rightSpan = document.createElement('span');
rightSpan.appendChild(dateText);
listItem.appendChild(rightSpan);
bioInfo = document.querySelector('.bio-info');
