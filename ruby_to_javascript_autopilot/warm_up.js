// Exercise 1
var apples = 14;
console.log(`I have ${apples} apples.`);

// Exercise 2
var materials = ['wood', 'metal', 'stone'];
console.log(materials);

// Exercise 3
var words = {"elephant": "The world's largest land mammal.", "school": "A place of learning.", "ice cream": "A delicious milk-based dessert."};

// Exercise 4
var num = 16;
if (num > 10) {
  console.log(`${num} is greater than 10.`);
} else if (num === 10) {
  console.log(`${num} is exactly 10.`);
} else {
  console.log(`${num} is less than 10`);
}

// Exercise 5
for (i = 0; i < 10; i++) {
  console.log('Doing the same thing over and over.');
}

// Exercise 6
var base = 5;
for (i = 0; i < 20; i++) {
  console.log(i + base);
}

// Exercise 7
var total = 0;
for (i = 0; i < 100; i++) {
  total += i;
}
console.log(total);

// Exercise 8
for (height = 3; height < 16; height++) {
  if (height > 9) {
    console.log('You can get on the rollercoaster!');
  } else {
    console.log('You are too short to ride this rollercoaster.');
  }
}

// Exercise 9
var containers = ['purse', 'wallet', 'backpack'];
for (item = 0; item < containers.length; item++) {
  console.log(containers[item]);
}

// Exercise 10
function helloWorld() {
  console.log('Hello world!');
}
helloWorld();

// Exercise 11
function add(firstNum, secondNum) {
  console.log(firstNum + secondNum);
}
add(1, 4)
