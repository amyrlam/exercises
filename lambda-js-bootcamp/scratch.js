// lambda school mini js bootcamp lecture 1

var name = 'Ben';
var favoriteNumber = 15;
var likesPizza = true;

// run node scratch.js
console.log(name);
console.log(favoriteNumber);
console.log(likesPizza);

var age = 30 * 10 + 5 / 4;
age = age + 10;

console.log(age);

var remainder = 20 % 7;

console.log(remainder);

var negative = -100;

var firstName = 'ben';
var lastName = 'nelson';

var fullName = firstName + ' ' + lastName;

console.log(fullName);

var twoCubed = Math.pow(2, 3); // 2^3

var roundedValue = Math.round(5.4); // 5

var ceilValue = Math.ceil(5.000001); // 6

var floorValue = Math.floor(5.9901); // 5

var greeting = 'Hello World!';
var greetingLength = greeting.length;

console.log(greetingLength);

function sayHi() {
  console.log('Hello!');
}

console.log('hi!');
sayHi();

function sayHi(name) {
  var greeting = 'Hello ' + name;
  console.log(greeting);
}

var name1 = 'Ben';
sayHi(name1);
sayHi('Austen');
sayHi('Ryan');
sayHi('Young');
sayHi('Mike');

function addTwoNumbers(x, y) {
  // console.log(x, y);
  var sum = x + y;
  return sum;
}

var value = addTwoNumbers(2, 3); // 5

console.log(value);

function canDrive(age) {
  if (age >= 16) {
    return true;
  }

  return false;
}

var myAge = 50;
var iCanDrive = canDrive(myAge);
console.log(iCanDrive);

var hisAge = 10;
var heCanDrive = canDrive(hisAge);
console.log(heCanDrive);

function canDrive(age) {
  if (age === 16) {
    return true;
  }

  return false;
}

var herAge = 16;
var sheCanDrive = canDrive(herAge);
console.log(sheCanDrive);
