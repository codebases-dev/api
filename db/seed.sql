DELETE FROM `snippets`;
INSERT INTO `snippets` VALUES ('ad9b1d80-2e25-48c7-990f-25595e433bc8', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Hello, World!', 'console.log("Hello, World!");', 'javascript', '2020-01-01T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('3a0f7ff2-610e-4767-ac88-d7adedb7694f', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Sum of Numbers', 'let numbers = [1, 2, 3, 4, 5];
let sum = 0;
for (let number of numbers) {
  sum += number;
}
console.log(sum);
', 'javascript', '2020-01-02T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('e58a12c1-4b8b-491e-a015-54aa86763a09', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Greet', 'function greet(name) {
  console.log("Hello, " + name + "!");
}
greet("Alice");
', 'javascript', '2020-01-03T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('c199871f-b710-4377-9e43-805473ed2a6d', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Person', 'let person = {
  name: "Bob",
  age: 30
};
console.log(person.name + " is " + person.age + " years old.");
', 'javascript', '2020-01-04T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('f2ad1154-4d46-46d7-8cc3-dab0a6132540', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Pass or Fail', 'let score = 75;
if (score >= 70) {
  console.log("Passed");
} else {
  console.log("Failed");
}
', 'javascript', '2020-01-05T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('2a2ec333-8ac2-4c72-a028-c7c420c5123c', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Doubled Numbers', 'let numbers = [1, 2, 3, 4, 5];
let doubledNumbers = numbers.map(number => number * 2);
console.log(doubledNumbers);
', 'javascript', '2020-01-06T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('28ee2398-5521-4c4f-9f0b-68edecaea9fe', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Young People', 'let people = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
  { name: "Charlie", age: 28 }
];
let youngPeople = people.filter(person => person.age < 30);
console.log(youngPeople);
', 'javascript', '2020-01-07T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('5f641894-8bf6-4a4a-8683-eabc10a4ba76', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Greeting', 'let name = "Dave";
let greeting = `Hello, ${name}! How are you?`;
console.log(greeting);
', 'javascript', '2020-01-08T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('cc568528-bc8d-4048-b5ba-a7bc76b484f7', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Async Hello World', 'function asyncFunction() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve("Async Hello world");
    }, 1000);
  });
}
asyncFunction().then(console.log);
', 'javascript', '2020-01-09T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('e0dd8ad5-2bbc-4cf9-bc1c-2126a6b42b87', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Person Class', 'class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
  describe() {
    console.log(`${this.name} is ${this.age} years old.`);
  }
}
const alice = new Person("Alice", 25);
alice.describe();
', 'javascript', '2020-01-10T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('bd6510fe-d003-481f-be3e-4cb32a5096c0', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Fruits', 'const fruits = [''apple'', ''banana'', ''cherry''];
fruits.forEach(fruit => {
  console.log(fruit);
});
', 'javascript', '2020-01-11T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('88aa2f16-9f88-4e80-83f7-7e934831fc38', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Find User', 'const users = [
  { id: 1, name: ''Alice'' },
  { id: 2, name: ''Bob'' },
  { id: 3, name: ''Charlie'' }
];
const user = users.find(user => user.id === 2);
console.log(user.name); // "Bob"
', 'javascript', '2020-01-12T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('d67cc56c-7eec-4ecd-ad9c-34fc98f9ed91', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Counter Class', 'class Counter {
  constructor() {
    this.count = 0;
  }
  increment() {
    this.count += 1;
    console.log(this.count);
  }
}
const counter = new Counter();
counter.increment(); // 1
counter.increment(); // 2
', 'javascript', '2020-01-13T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('3243df15-8e70-42f6-be04-aebad91b472c', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Set Timeout', 'console.log(''Start'');
setTimeout(() => {
  console.log(''This runs after 2 seconds'');
}, 2000);
console.log(''End'');
', 'javascript', '2020-01-14T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('5d9beb72-5426-48c1-ab37-53e9f6581783', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Combine Arrays', 'const first = [1, 2, 3];
const second = [4, 5, 6];
const combined = [...first, ...second];
console.log(combined);
', 'javascript', '2020-01-15T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('d71597b8-1aae-431e-8b0a-ef1223f7f0ed', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Destructuring', 'const person = {
  name: ''Dave'',
  age: 34
};
const { name, age } = person;
console.log(name); // "Dave"
console.log(age); // 34
', 'javascript', '2020-01-16T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('e6f67561-1d6f-4520-9919-bcf456a717f8', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Sum of Numbers', 'const numbers = [1, 2, 3, 4, 5];
const sum = numbers.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
console.log(sum); // 15
', 'javascript', '2020-01-17T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('1cb8e262-6bdf-4840-9251-f49868dac75d', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Multi-line String', 'const greeting = `Hello,
This is a multi-line string!
Goodbye!`;
console.log(greeting);
', 'javascript', '2020-01-18T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('6f6830ac-23b0-4168-a626-f5c14568e282', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Dynamic Object', 'const key = "color";
const value = "blue";
const dynamicObject = {
  [key]: value
};
console.log(dynamicObject.color); // "blue"
', 'javascript', '2020-01-19T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('270998c6-9180-4256-805a-900e89039673', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Promise Chain', 'function doubleAfter2Seconds(x) {
  return new Promise(resolve => {
    setTimeout(() => {
      resolve(x * 2);
    }, 2000);
  });
}

doubleAfter2Seconds(10).then((result) => {
  console.log(result);  // 20
  return doubleAfter2Seconds(20);
}).then((result) => {
  console.log(result);  // 40
  return doubleAfter2Seconds(30);
}).then(result => {
  console.log(result);  // 60
});
', 'javascript', '2020-01-20T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('df3a92b5-4896-4099-b985-4e70c306a5f2', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Array from String', 'const str = ''hello'';
const letters = Array.from(str);
console.log(letters); // [''h'', ''e'', ''l'', ''l'', ''o'']
', 'javascript', '2020-01-21T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('823b9dd2-28cf-485c-94bb-43d566b89f73', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Map and Set', 'const fruits = new Map([
  [''apples'', 5],
  [''bananas'', 10],
  [''oranges'', 3]
]);

fruits.set(''cherries'', 7);
console.log(fruits.get(''bananas'')); // 10
', 'javascript', '2020-01-22T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('25004906-adac-40a1-b5ca-f078e1584829', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Set', 'const numbers = new Set([1, 2, 3, 4, 4, 2]);
console.log(numbers); // Set {1, 2, 3, 4}
', 'javascript', '2020-01-23T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('b6bea250-7e9c-4007-a5c1-f2dda86a7bdb', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Destructuring Array', 'const [first, second, , fourth] = [1, 2, 3, 4];
console.log(first); // 1
console.log(second); // 2
console.log(fourth); // 4
', 'javascript', '2020-01-24T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('de20be32-ec8a-41a3-a41c-554663173bae', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Fetch Data', 'fetch(''https://api.example.com/data'')
.then(response => response.json())
.then(data => console.log(data))
.catch(error => console.error(''Error:'', error));
', 'javascript', '2020-01-25T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('cefd04cd-b961-46e3-afb0-018143231d30', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Arrow Function', 'const add = (a, b) => a + b;
console.log(add(5, 3)); // 8
', 'javascript', '2020-01-26T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('452bec05-5e9e-45f5-bd6d-76b28b417ec7', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Async Await', 'async function fetchData() {
  try {
    const response = await fetch(''https://api.example.com/data'');
    const data = await response.json();
    console.log(data);
  } catch (error) {
    console.error(''Error:'', error);
  }
}

fetchData();
', 'javascript', '2020-01-27T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('3d614653-a1b5-4846-b3cb-c7e106fbd907', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Object Literal', 'const name = ''Alice'';
const age = 25;

const person = { name, age };
console.log(person); // { name: ''Alice'', age: 25 }
', 'javascript', '2020-01-28T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('5928b527-7f9f-4d3d-aefb-9dbda8b59d17', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'For In Loop', 'const person = { name: ''Bob'', age: 30, city: ''New York'' };
for (const key in person) {
  console.log(`${key}: ${person[key]}`);
}
', 'javascript', '2020-01-29T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('0850fe9d-5470-4ec9-bae8-ef01c3d64546', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'For Of Loop', 'const colors = [''red'', ''green'', ''blue''];
for (const color of colors) {
  console.log(color);
}
', 'javascript', '2020-01-30T00:00:00.000Z');
