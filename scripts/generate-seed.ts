import { writeFileSync } from "node:fs";

if (!process.env.TEST_USER_ID) {
	throw new Error("`TEST_USER_ID` is not set");
}

const testUserId = process.env.TEST_USER_ID;

const snippets = [
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Hello, World!",
		code: `console.log("Hello, World!");`,
		language: "javascript",
		postedAt: "2020-01-01T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Sum of Numbers",
		code: `let numbers = [1, 2, 3, 4, 5];
let sum = 0;
for (let number of numbers) {
  sum += number;
}
console.log(sum);
`,
		language: "javascript",
		postedAt: "2020-01-02T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Greet",
		code: `function greet(name) {
  console.log("Hello, " + name + "!");
}
greet("Alice");
`,
		language: "javascript",
		postedAt: "2020-01-03T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Person",
		code: `let person = {
  name: "Bob",
  age: 30
};
console.log(person.name + " is " + person.age + " years old.");
`,
		language: "javascript",
		postedAt: "2020-01-04T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Pass or Fail",
		code: `let score = 75;
if (score >= 70) {
  console.log("Passed");
} else {
  console.log("Failed");
}
`,
		language: "javascript",
		postedAt: "2020-01-05T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Doubled Numbers",
		code: `let numbers = [1, 2, 3, 4, 5];
let doubledNumbers = numbers.map(number => number * 2);
console.log(doubledNumbers);
`,
		language: "javascript",
		postedAt: "2020-01-06T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Young People",
		code: `let people = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
  { name: "Charlie", age: 28 }
];
let youngPeople = people.filter(person => person.age < 30);
console.log(youngPeople);
`,
		language: "javascript",
		postedAt: "2020-01-07T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Greeting",
		code: `let name = "Dave";
let greeting = \`Hello, \${name}! How are you?\`;
console.log(greeting);
`,
		language: "javascript",
		postedAt: "2020-01-08T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Async Hello World",
		code: `function asyncFunction() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve("Async Hello world");
    }, 1000);
  });
}
asyncFunction().then(console.log);
`,
		language: "javascript",
		postedAt: "2020-01-09T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Person Class",
		code: `class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
  describe() {
    console.log(\`\${this.name} is \${this.age} years old.\`);
  }
}
const alice = new Person("Alice", 25);
alice.describe();
`,
		language: "javascript",
		postedAt: "2020-01-10T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Fruits",
		code: `const fruits = ['apple', 'banana', 'cherry'];
fruits.forEach(fruit => {
  console.log(fruit);
});
`,
		language: "javascript",
		postedAt: "2020-01-11T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Find User",
		code: `const users = [
  { id: 1, name: 'Alice' },
  { id: 2, name: 'Bob' },
  { id: 3, name: 'Charlie' }
];
const user = users.find(user => user.id === 2);
console.log(user.name); // "Bob"
`,
		language: "javascript",
		postedAt: "2020-01-12T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Counter Class",
		code: `class Counter {
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
`,
		language: "javascript",
		postedAt: "2020-01-13T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Set Timeout",
		code: `console.log('Start');
setTimeout(() => {
  console.log('This runs after 2 seconds');
}, 2000);
console.log('End');
`,
		language: "javascript",
		postedAt: "2020-01-14T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Combine Arrays",
		code: `const first = [1, 2, 3];
const second = [4, 5, 6];
const combined = [...first, ...second];
console.log(combined);
`,
		language: "javascript",
		postedAt: "2020-01-15T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Destructuring",
		code: `const person = {
  name: 'Dave',
  age: 34
};
const { name, age } = person;
console.log(name); // "Dave"
console.log(age); // 34
`,
		language: "javascript",
		postedAt: "2020-01-16T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Sum of Numbers",
		code: `const numbers = [1, 2, 3, 4, 5];
const sum = numbers.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
console.log(sum); // 15
`,
		language: "javascript",
		postedAt: "2020-01-17T00:00:00.000Z",
	},
	// -------------------------------------------------------
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Multi-line String",
		code: `const greeting = \`Hello,
This is a multi-line string!
Goodbye!\`;
console.log(greeting);
`,
		language: "javascript",
		postedAt: "2020-01-18T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Dynamic Object",
		code: `const key = "color";
const value = "blue";
const dynamicObject = {
  [key]: value
};
console.log(dynamicObject.color); // "blue"
`,
		language: "javascript",
		postedAt: "2020-01-19T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Promise Chain",
		code: `function doubleAfter2Seconds(x) {
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
`,
		language: "javascript",
		postedAt: "2020-01-20T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Array from String",
		code: `const str = 'hello';
const letters = Array.from(str);
console.log(letters); // ['h', 'e', 'l', 'l', 'o']
`,
		language: "javascript",
		postedAt: "2020-01-21T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Map and Set",
		code: `const fruits = new Map([
  ['apples', 5],
  ['bananas', 10],
  ['oranges', 3]
]);

fruits.set('cherries', 7);
console.log(fruits.get('bananas')); // 10
`,
		language: "javascript",
		postedAt: "2020-01-22T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Set",
		code: `const numbers = new Set([1, 2, 3, 4, 4, 2]);
console.log(numbers); // Set {1, 2, 3, 4}
`,
		language: "javascript",
		postedAt: "2020-01-23T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Destructuring Array",
		code: `const [first, second, , fourth] = [1, 2, 3, 4];
console.log(first); // 1
console.log(second); // 2
console.log(fourth); // 4
`,
		language: "javascript",
		postedAt: "2020-01-24T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Fetch Data",
		code: `fetch('https://api.example.com/data')
.then(response => response.json())
.then(data => console.log(data))
.catch(error => console.error('Error:', error));
`,
		language: "javascript",
		postedAt: "2020-01-25T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Arrow Function",
		code: `const add = (a, b) => a + b;
console.log(add(5, 3)); // 8
`,
		language: "javascript",
		postedAt: "2020-01-26T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Async Await",
		code: `async function fetchData() {
  try {
    const response = await fetch('https://api.example.com/data');
    const data = await response.json();
    console.log(data);
  } catch (error) {
    console.error('Error:', error);
  }
}

fetchData();
`,
		language: "javascript",
		postedAt: "2020-01-27T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "Object Literal",
		code: `const name = 'Alice';
const age = 25;

const person = { name, age };
console.log(person); // { name: 'Alice', age: 25 }
`,
		language: "javascript",
		postedAt: "2020-01-28T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "For In Loop",
		code: `const person = { name: 'Bob', age: 30, city: 'New York' };
for (const key in person) {
  console.log(\`\${key}: \${person[key]}\`);
}
`,
		language: "javascript",
		postedAt: "2020-01-29T00:00:00.000Z",
	},
	{
		id: crypto.randomUUID(),
		userId: testUserId,
		title: "For Of Loop",
		code: `const colors = ['red', 'green', 'blue'];
for (const color of colors) {
  console.log(color);
}
`,
		language: "javascript",
		postedAt: "2020-01-30T00:00:00.000Z",
	},
];

function generateDeleteStatement(table: string) {
	return `DELETE FROM \`${table}\`;`;
}

function writeInsertStatement(table: string, values: Record<string, string>) {
	return `INSERT INTO \`${table}\` VALUES (${Object.values(values)
		.map((value) => `'${value.replaceAll("'", "''")}'`)
		.join(", ")});`;
}

async function main() {
	const snippetHighlights = await Promise.all(
		snippets.map(async (snippet) => ({
			snippetId: snippet.id,
			highlightedCodeHtml: await fetch("http://localhost:8787/highlight", {
				method: "POST",
				headers: {
					"Content-Type": "application/json",
				},
				body: JSON.stringify({
					code: snippet.code,
					language: "js",
				}),
			})
				.then<{ html: string }>((res) => res.json())
				.then((res) => res.html),
		})),
	);

	const seed = [
		generateDeleteStatement("snippetHighlights"),
		generateDeleteStatement("snippets"),
		...snippets.map((snippet) => writeInsertStatement("snippets", snippet)),
		...snippetHighlights.map((snippetHighlight) =>
			writeInsertStatement("snippetHighlights", snippetHighlight),
		),
	].join("\n");

	writeFileSync("./db/seed.sql", seed);
}

main();
