DELETE FROM `snippetHighlights`;
DELETE FROM `snippets`;
INSERT INTO `snippets` VALUES ('c611c402-15b6-46d5-b75c-a3593eb49d35', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Hello, World!', 'console.log("Hello, World!");', 'javascript', '2020-01-01T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('b55258af-1b01-45ba-b35c-3db81361013a', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Sum of Numbers', 'let numbers = [1, 2, 3, 4, 5];
let sum = 0;
for (let number of numbers) {
  sum += number;
}
console.log(sum);
', 'javascript', '2020-01-02T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('81470dc7-7428-46ba-a719-63255336cd35', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Greet', 'function greet(name) {
  console.log("Hello, " + name + "!");
}
greet("Alice");
', 'javascript', '2020-01-03T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('cbe7a7de-c9dc-433e-a754-9011ef693d11', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Person', 'let person = {
  name: "Bob",
  age: 30
};
console.log(person.name + " is " + person.age + " years old.");
', 'javascript', '2020-01-04T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('53690dbd-083f-46dd-a137-208174e27efd', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Pass or Fail', 'let score = 75;
if (score >= 70) {
  console.log("Passed");
} else {
  console.log("Failed");
}
', 'javascript', '2020-01-05T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('2abf9e39-d424-408b-aa2e-562c34f4fcc0', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Doubled Numbers', 'let numbers = [1, 2, 3, 4, 5];
let doubledNumbers = numbers.map(number => number * 2);
console.log(doubledNumbers);
', 'javascript', '2020-01-06T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('117c5341-3e91-4aa7-86aa-8d91abe67e7c', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Young People', 'let people = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
  { name: "Charlie", age: 28 }
];
let youngPeople = people.filter(person => person.age < 30);
console.log(youngPeople);
', 'javascript', '2020-01-07T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('0a6340bd-8af2-4b9d-b6c4-0294da85c1c5', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Greeting', 'let name = "Dave";
let greeting = `Hello, ${name}! How are you?`;
console.log(greeting);
', 'javascript', '2020-01-08T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('b914cc2e-6b0e-40c0-bb57-2c4b02facef0', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Async Hello World', 'function asyncFunction() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve("Async Hello world");
    }, 1000);
  });
}
asyncFunction().then(console.log);
', 'javascript', '2020-01-09T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('7c520c1c-bd0a-40dd-87ed-c71de47f2056', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Person Class', 'class Person {
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
INSERT INTO `snippets` VALUES ('b6c9a21e-1951-418b-9ed3-f7e63b93bb1b', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Fruits', 'const fruits = [''apple'', ''banana'', ''cherry''];
fruits.forEach(fruit => {
  console.log(fruit);
});
', 'javascript', '2020-01-11T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('684bb2ca-bce5-460f-a75d-8fa4e5536c12', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Find User', 'const users = [
  { id: 1, name: ''Alice'' },
  { id: 2, name: ''Bob'' },
  { id: 3, name: ''Charlie'' }
];
const user = users.find(user => user.id === 2);
console.log(user.name); // "Bob"
', 'javascript', '2020-01-12T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('cde5d956-a14b-4f72-81c2-08c14b301df9', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Counter Class', 'class Counter {
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
INSERT INTO `snippets` VALUES ('8a7d4689-381b-4dea-8183-74cd3a591cde', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Set Timeout', 'console.log(''Start'');
setTimeout(() => {
  console.log(''This runs after 2 seconds'');
}, 2000);
console.log(''End'');
', 'javascript', '2020-01-14T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('acec8842-9fd8-4f61-a402-f199376b344a', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Combine Arrays', 'const first = [1, 2, 3];
const second = [4, 5, 6];
const combined = [...first, ...second];
console.log(combined);
', 'javascript', '2020-01-15T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('b9600e4a-b86b-4495-9cce-169a011aba05', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Destructuring', 'const person = {
  name: ''Dave'',
  age: 34
};
const { name, age } = person;
console.log(name); // "Dave"
console.log(age); // 34
', 'javascript', '2020-01-16T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('cad047a2-603d-4e4a-a6d7-a7e180140c10', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Sum of Numbers', 'const numbers = [1, 2, 3, 4, 5];
const sum = numbers.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
console.log(sum); // 15
', 'javascript', '2020-01-17T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('0ef82dba-a648-45f4-9fe5-9d002ec8e776', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Multi-line String', 'const greeting = `Hello,
This is a multi-line string!
Goodbye!`;
console.log(greeting);
', 'javascript', '2020-01-18T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('467b05eb-d8e9-417f-ac87-4dafd979e159', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Dynamic Object', 'const key = "color";
const value = "blue";
const dynamicObject = {
  [key]: value
};
console.log(dynamicObject.color); // "blue"
', 'javascript', '2020-01-19T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('b090cd25-a52f-46a0-a2e3-077ac7e70b1f', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Promise Chain', 'function doubleAfter2Seconds(x) {
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
INSERT INTO `snippets` VALUES ('4d2ef6a8-a5bd-447d-ac6b-f89a0bc93ae0', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Array from String', 'const str = ''hello'';
const letters = Array.from(str);
console.log(letters); // [''h'', ''e'', ''l'', ''l'', ''o'']
', 'javascript', '2020-01-21T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('d80edd0d-bab7-40c3-a3c5-7ec71c77e5b2', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Map and Set', 'const fruits = new Map([
  [''apples'', 5],
  [''bananas'', 10],
  [''oranges'', 3]
]);

fruits.set(''cherries'', 7);
console.log(fruits.get(''bananas'')); // 10
', 'javascript', '2020-01-22T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('52472fcb-2119-4774-b4a7-6078e24501b4', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Set', 'const numbers = new Set([1, 2, 3, 4, 4, 2]);
console.log(numbers); // Set {1, 2, 3, 4}
', 'javascript', '2020-01-23T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('d38e6da0-972e-4849-880a-4ada090d7a0b', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Destructuring Array', 'const [first, second, , fourth] = [1, 2, 3, 4];
console.log(first); // 1
console.log(second); // 2
console.log(fourth); // 4
', 'javascript', '2020-01-24T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('b40b9c30-7aa8-4bc2-a6c3-7b7bff8f435d', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Fetch Data', 'fetch(''https://api.example.com/data'')
.then(response => response.json())
.then(data => console.log(data))
.catch(error => console.error(''Error:'', error));
', 'javascript', '2020-01-25T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('d2e5ae08-f78c-4cf8-a8b5-7d4e218d907f', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Arrow Function', 'const add = (a, b) => a + b;
console.log(add(5, 3)); // 8
', 'javascript', '2020-01-26T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('df658723-466a-4c8f-b989-ab2efd4beda6', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Async Await', 'async function fetchData() {
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
INSERT INTO `snippets` VALUES ('0b75a9be-78ac-4c62-8727-08a34d9c9e33', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'Object Literal', 'const name = ''Alice'';
const age = 25;

const person = { name, age };
console.log(person); // { name: ''Alice'', age: 25 }
', 'javascript', '2020-01-28T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('051ef6f5-27cc-4020-a06d-7ea9058dc515', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'For In Loop', 'const person = { name: ''Bob'', age: 30, city: ''New York'' };
for (const key in person) {
  console.log(`${key}: ${person[key]}`);
}
', 'javascript', '2020-01-29T00:00:00.000Z');
INSERT INTO `snippets` VALUES ('c34f0a47-bd5c-47d2-967b-9b19a6a8c734', 'user_2gjTmESpd6w7arFvxlO24AQRzUS', 'For Of Loop', 'const colors = [''red'', ''green'', ''blue''];
for (const color of colors) {
  console.log(color);
}
', 'javascript', '2020-01-30T00:00:00.000Z');
INSERT INTO `snippetHighlights` VALUES ('c611c402-15b6-46d5-b75c-a3593eb49d35', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">"Hello, World!"</span><span style="color:#ADBAC7">);</span></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('b55258af-1b01-45ba-b35c-3db81361013a', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> numbers </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> [</span><span style="color:#6CB6FF">1</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">2</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">3</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">4</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">5</span><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> sum </span><span style="color:#F47067">=</span><span style="color:#6CB6FF"> 0</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#F47067">for</span><span style="color:#ADBAC7"> (</span><span style="color:#F47067">let</span><span style="color:#ADBAC7"> number </span><span style="color:#F47067">of</span><span style="color:#ADBAC7"> numbers) {</span></span>
<span class="line"><span style="color:#ADBAC7">  sum </span><span style="color:#F47067">+=</span><span style="color:#ADBAC7"> number;</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(sum);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('81470dc7-7428-46ba-a719-63255336cd35', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">function</span><span style="color:#DCBDFB"> greet</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">name</span><span style="color:#ADBAC7">) {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">"Hello, "</span><span style="color:#F47067"> +</span><span style="color:#ADBAC7"> name </span><span style="color:#F47067">+</span><span style="color:#96D0FF"> "!"</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"><span style="color:#DCBDFB">greet</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">"Alice"</span><span style="color:#ADBAC7">);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('cbe7a7de-c9dc-433e-a754-9011ef693d11', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> person </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#ADBAC7">  name: </span><span style="color:#96D0FF">"Bob"</span><span style="color:#ADBAC7">,</span></span>
<span class="line"><span style="color:#ADBAC7">  age: </span><span style="color:#6CB6FF">30</span></span>
<span class="line"><span style="color:#ADBAC7">};</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(person.name </span><span style="color:#F47067">+</span><span style="color:#96D0FF"> " is "</span><span style="color:#F47067"> +</span><span style="color:#ADBAC7"> person.age </span><span style="color:#F47067">+</span><span style="color:#96D0FF"> " years old."</span><span style="color:#ADBAC7">);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('53690dbd-083f-46dd-a137-208174e27efd', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> score </span><span style="color:#F47067">=</span><span style="color:#6CB6FF"> 75</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#F47067">if</span><span style="color:#ADBAC7"> (score </span><span style="color:#F47067">>=</span><span style="color:#6CB6FF"> 70</span><span style="color:#ADBAC7">) {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">"Passed"</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">} </span><span style="color:#F47067">else</span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">"Failed"</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('2abf9e39-d424-408b-aa2e-562c34f4fcc0', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> numbers </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> [</span><span style="color:#6CB6FF">1</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">2</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">3</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">4</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">5</span><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> doubledNumbers </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> numbers.</span><span style="color:#DCBDFB">map</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">number</span><span style="color:#F47067"> =></span><span style="color:#ADBAC7"> number </span><span style="color:#F47067">*</span><span style="color:#6CB6FF"> 2</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(doubledNumbers);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('117c5341-3e91-4aa7-86aa-8d91abe67e7c', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> people </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> [</span></span>
<span class="line"><span style="color:#ADBAC7">  { name: </span><span style="color:#96D0FF">"Alice"</span><span style="color:#ADBAC7">, age: </span><span style="color:#6CB6FF">25</span><span style="color:#ADBAC7"> },</span></span>
<span class="line"><span style="color:#ADBAC7">  { name: </span><span style="color:#96D0FF">"Bob"</span><span style="color:#ADBAC7">, age: </span><span style="color:#6CB6FF">30</span><span style="color:#ADBAC7"> },</span></span>
<span class="line"><span style="color:#ADBAC7">  { name: </span><span style="color:#96D0FF">"Charlie"</span><span style="color:#ADBAC7">, age: </span><span style="color:#6CB6FF">28</span><span style="color:#ADBAC7"> }</span></span>
<span class="line"><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> youngPeople </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> people.</span><span style="color:#DCBDFB">filter</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">person</span><span style="color:#F47067"> =></span><span style="color:#ADBAC7"> person.age </span><span style="color:#F47067">&#x3C;</span><span style="color:#6CB6FF"> 30</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(youngPeople);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('0a6340bd-8af2-4b9d-b6c4-0294da85c1c5', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> name </span><span style="color:#F47067">=</span><span style="color:#96D0FF"> "Dave"</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#F47067">let</span><span style="color:#ADBAC7"> greeting </span><span style="color:#F47067">=</span><span style="color:#96D0FF"> `Hello, ${</span><span style="color:#ADBAC7">name</span><span style="color:#96D0FF">}! How are you?`</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(greeting);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('b914cc2e-6b0e-40c0-bb57-2c4b02facef0', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">function</span><span style="color:#DCBDFB"> asyncFunction</span><span style="color:#ADBAC7">() {</span></span>
<span class="line"><span style="color:#F47067">  return</span><span style="color:#F47067"> new</span><span style="color:#6CB6FF"> Promise</span><span style="color:#ADBAC7">((</span><span style="color:#F69D50">resolve</span><span style="color:#ADBAC7">, </span><span style="color:#F69D50">reject</span><span style="color:#ADBAC7">) </span><span style="color:#F47067">=></span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#DCBDFB">    setTimeout</span><span style="color:#ADBAC7">(() </span><span style="color:#F47067">=></span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#DCBDFB">      resolve</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">"Async Hello world"</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">    }, </span><span style="color:#6CB6FF">1000</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">  });</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"><span style="color:#DCBDFB">asyncFunction</span><span style="color:#ADBAC7">().</span><span style="color:#DCBDFB">then</span><span style="color:#ADBAC7">(console.log);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('7c520c1c-bd0a-40dd-87ed-c71de47f2056', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">class</span><span style="color:#F69D50"> Person</span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#F47067">  constructor</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">name</span><span style="color:#ADBAC7">, </span><span style="color:#F69D50">age</span><span style="color:#ADBAC7">) {</span></span>
<span class="line"><span style="color:#6CB6FF">    this</span><span style="color:#ADBAC7">.name </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> name;</span></span>
<span class="line"><span style="color:#6CB6FF">    this</span><span style="color:#ADBAC7">.age </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> age;</span></span>
<span class="line"><span style="color:#ADBAC7">  }</span></span>
<span class="line"><span style="color:#DCBDFB">  describe</span><span style="color:#ADBAC7">() {</span></span>
<span class="line"><span style="color:#ADBAC7">    console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">`${</span><span style="color:#6CB6FF">this</span><span style="color:#96D0FF">.</span><span style="color:#ADBAC7">name</span><span style="color:#96D0FF">} is ${</span><span style="color:#6CB6FF">this</span><span style="color:#96D0FF">.</span><span style="color:#ADBAC7">age</span><span style="color:#96D0FF">} years old.`</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">  }</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> alice</span><span style="color:#F47067"> =</span><span style="color:#F47067"> new</span><span style="color:#DCBDFB"> Person</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">"Alice"</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">25</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">alice.</span><span style="color:#DCBDFB">describe</span><span style="color:#ADBAC7">();</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('b6c9a21e-1951-418b-9ed3-f7e63b93bb1b', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> fruits</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> [</span><span style="color:#96D0FF">''apple''</span><span style="color:#ADBAC7">, </span><span style="color:#96D0FF">''banana''</span><span style="color:#ADBAC7">, </span><span style="color:#96D0FF">''cherry''</span><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#ADBAC7">fruits.</span><span style="color:#DCBDFB">forEach</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">fruit</span><span style="color:#F47067"> =></span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(fruit);</span></span>
<span class="line"><span style="color:#ADBAC7">});</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('684bb2ca-bce5-460f-a75d-8fa4e5536c12', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> users</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> [</span></span>
<span class="line"><span style="color:#ADBAC7">  { id: </span><span style="color:#6CB6FF">1</span><span style="color:#ADBAC7">, name: </span><span style="color:#96D0FF">''Alice''</span><span style="color:#ADBAC7"> },</span></span>
<span class="line"><span style="color:#ADBAC7">  { id: </span><span style="color:#6CB6FF">2</span><span style="color:#ADBAC7">, name: </span><span style="color:#96D0FF">''Bob''</span><span style="color:#ADBAC7"> },</span></span>
<span class="line"><span style="color:#ADBAC7">  { id: </span><span style="color:#6CB6FF">3</span><span style="color:#ADBAC7">, name: </span><span style="color:#96D0FF">''Charlie''</span><span style="color:#ADBAC7"> }</span></span>
<span class="line"><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> user</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> users.</span><span style="color:#DCBDFB">find</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">user</span><span style="color:#F47067"> =></span><span style="color:#ADBAC7"> user.id </span><span style="color:#F47067">===</span><span style="color:#6CB6FF"> 2</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(user.name); </span><span style="color:#768390">// "Bob"</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('cde5d956-a14b-4f72-81c2-08c14b301df9', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">class</span><span style="color:#F69D50"> Counter</span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#F47067">  constructor</span><span style="color:#ADBAC7">() {</span></span>
<span class="line"><span style="color:#6CB6FF">    this</span><span style="color:#ADBAC7">.count </span><span style="color:#F47067">=</span><span style="color:#6CB6FF"> 0</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#ADBAC7">  }</span></span>
<span class="line"><span style="color:#DCBDFB">  increment</span><span style="color:#ADBAC7">() {</span></span>
<span class="line"><span style="color:#6CB6FF">    this</span><span style="color:#ADBAC7">.count </span><span style="color:#F47067">+=</span><span style="color:#6CB6FF"> 1</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#ADBAC7">    console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#6CB6FF">this</span><span style="color:#ADBAC7">.count);</span></span>
<span class="line"><span style="color:#ADBAC7">  }</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> counter</span><span style="color:#F47067"> =</span><span style="color:#F47067"> new</span><span style="color:#DCBDFB"> Counter</span><span style="color:#ADBAC7">();</span></span>
<span class="line"><span style="color:#ADBAC7">counter.</span><span style="color:#DCBDFB">increment</span><span style="color:#ADBAC7">(); </span><span style="color:#768390">// 1</span></span>
<span class="line"><span style="color:#ADBAC7">counter.</span><span style="color:#DCBDFB">increment</span><span style="color:#ADBAC7">(); </span><span style="color:#768390">// 2</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('8a7d4689-381b-4dea-8183-74cd3a591cde', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">''Start''</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#DCBDFB">setTimeout</span><span style="color:#ADBAC7">(() </span><span style="color:#F47067">=></span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">''This runs after 2 seconds''</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">}, </span><span style="color:#6CB6FF">2000</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">''End''</span><span style="color:#ADBAC7">);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('acec8842-9fd8-4f61-a402-f199376b344a', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> first</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> [</span><span style="color:#6CB6FF">1</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">2</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">3</span><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> second</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> [</span><span style="color:#6CB6FF">4</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">5</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">6</span><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> combined</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> [</span><span style="color:#F47067">...</span><span style="color:#ADBAC7">first, </span><span style="color:#F47067">...</span><span style="color:#ADBAC7">second];</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(combined);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('b9600e4a-b86b-4495-9cce-169a011aba05', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> person</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#ADBAC7">  name: </span><span style="color:#96D0FF">''Dave''</span><span style="color:#ADBAC7">,</span></span>
<span class="line"><span style="color:#ADBAC7">  age: </span><span style="color:#6CB6FF">34</span></span>
<span class="line"><span style="color:#ADBAC7">};</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#ADBAC7"> { </span><span style="color:#6CB6FF">name</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">age</span><span style="color:#ADBAC7"> } </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> person;</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(name); </span><span style="color:#768390">// "Dave"</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(age); </span><span style="color:#768390">// 34</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('cad047a2-603d-4e4a-a6d7-a7e180140c10', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> numbers</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> [</span><span style="color:#6CB6FF">1</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">2</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">3</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">4</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">5</span><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> sum</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> numbers.</span><span style="color:#DCBDFB">reduce</span><span style="color:#ADBAC7">((</span><span style="color:#F69D50">accumulator</span><span style="color:#ADBAC7">, </span><span style="color:#F69D50">currentValue</span><span style="color:#ADBAC7">) </span><span style="color:#F47067">=></span><span style="color:#ADBAC7"> accumulator </span><span style="color:#F47067">+</span><span style="color:#ADBAC7"> currentValue, </span><span style="color:#6CB6FF">0</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(sum); </span><span style="color:#768390">// 15</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('0ef82dba-a648-45f4-9fe5-9d002ec8e776', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> greeting</span><span style="color:#F47067"> =</span><span style="color:#96D0FF"> `Hello,</span></span>
<span class="line"><span style="color:#96D0FF">This is a multi-line string!</span></span>
<span class="line"><span style="color:#96D0FF">Goodbye!`</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(greeting);</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('467b05eb-d8e9-417f-ac87-4dafd979e159', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> key</span><span style="color:#F47067"> =</span><span style="color:#96D0FF"> "color"</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> value</span><span style="color:#F47067"> =</span><span style="color:#96D0FF"> "blue"</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> dynamicObject</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#ADBAC7">  [key]: value</span></span>
<span class="line"><span style="color:#ADBAC7">};</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(dynamicObject.color); </span><span style="color:#768390">// "blue"</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('b090cd25-a52f-46a0-a2e3-077ac7e70b1f', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">function</span><span style="color:#DCBDFB"> doubleAfter2Seconds</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">x</span><span style="color:#ADBAC7">) {</span></span>
<span class="line"><span style="color:#F47067">  return</span><span style="color:#F47067"> new</span><span style="color:#6CB6FF"> Promise</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">resolve</span><span style="color:#F47067"> =></span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#DCBDFB">    setTimeout</span><span style="color:#ADBAC7">(() </span><span style="color:#F47067">=></span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#DCBDFB">      resolve</span><span style="color:#ADBAC7">(x </span><span style="color:#F47067">*</span><span style="color:#6CB6FF"> 2</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">    }, </span><span style="color:#6CB6FF">2000</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">  });</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"></span>
<span class="line"><span style="color:#DCBDFB">doubleAfter2Seconds</span><span style="color:#ADBAC7">(</span><span style="color:#6CB6FF">10</span><span style="color:#ADBAC7">).</span><span style="color:#DCBDFB">then</span><span style="color:#ADBAC7">((</span><span style="color:#F69D50">result</span><span style="color:#ADBAC7">) </span><span style="color:#F47067">=></span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(result);  </span><span style="color:#768390">// 20</span></span>
<span class="line"><span style="color:#F47067">  return</span><span style="color:#DCBDFB"> doubleAfter2Seconds</span><span style="color:#ADBAC7">(</span><span style="color:#6CB6FF">20</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">}).</span><span style="color:#DCBDFB">then</span><span style="color:#ADBAC7">((</span><span style="color:#F69D50">result</span><span style="color:#ADBAC7">) </span><span style="color:#F47067">=></span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(result);  </span><span style="color:#768390">// 40</span></span>
<span class="line"><span style="color:#F47067">  return</span><span style="color:#DCBDFB"> doubleAfter2Seconds</span><span style="color:#ADBAC7">(</span><span style="color:#6CB6FF">30</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">}).</span><span style="color:#DCBDFB">then</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">result</span><span style="color:#F47067"> =></span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(result);  </span><span style="color:#768390">// 60</span></span>
<span class="line"><span style="color:#ADBAC7">});</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('4d2ef6a8-a5bd-447d-ac6b-f89a0bc93ae0', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> str</span><span style="color:#F47067"> =</span><span style="color:#96D0FF"> ''hello''</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> letters</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> Array.</span><span style="color:#DCBDFB">from</span><span style="color:#ADBAC7">(str);</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(letters); </span><span style="color:#768390">// [''h'', ''e'', ''l'', ''l'', ''o'']</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('d80edd0d-bab7-40c3-a3c5-7ec71c77e5b2', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> fruits</span><span style="color:#F47067"> =</span><span style="color:#F47067"> new</span><span style="color:#DCBDFB"> Map</span><span style="color:#ADBAC7">([</span></span>
<span class="line"><span style="color:#ADBAC7">  [</span><span style="color:#96D0FF">''apples''</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">5</span><span style="color:#ADBAC7">],</span></span>
<span class="line"><span style="color:#ADBAC7">  [</span><span style="color:#96D0FF">''bananas''</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">10</span><span style="color:#ADBAC7">],</span></span>
<span class="line"><span style="color:#ADBAC7">  [</span><span style="color:#96D0FF">''oranges''</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">3</span><span style="color:#ADBAC7">]</span></span>
<span class="line"><span style="color:#ADBAC7">]);</span></span>
<span class="line"></span>
<span class="line"><span style="color:#ADBAC7">fruits.</span><span style="color:#DCBDFB">set</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">''cherries''</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">7</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(fruits.</span><span style="color:#DCBDFB">get</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">''bananas''</span><span style="color:#ADBAC7">)); </span><span style="color:#768390">// 10</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('52472fcb-2119-4774-b4a7-6078e24501b4', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> numbers</span><span style="color:#F47067"> =</span><span style="color:#F47067"> new</span><span style="color:#DCBDFB"> Set</span><span style="color:#ADBAC7">([</span><span style="color:#6CB6FF">1</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">2</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">3</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">4</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">4</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">2</span><span style="color:#ADBAC7">]);</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(numbers); </span><span style="color:#768390">// Set {1, 2, 3, 4}</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('d38e6da0-972e-4849-880a-4ada090d7a0b', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#ADBAC7"> [</span><span style="color:#6CB6FF">first</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">second</span><span style="color:#ADBAC7">, , </span><span style="color:#6CB6FF">fourth</span><span style="color:#ADBAC7">] </span><span style="color:#F47067">=</span><span style="color:#ADBAC7"> [</span><span style="color:#6CB6FF">1</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">2</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">3</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">4</span><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(first); </span><span style="color:#768390">// 1</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(second); </span><span style="color:#768390">// 2</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(fourth); </span><span style="color:#768390">// 4</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('b40b9c30-7aa8-4bc2-a6c3-7b7bff8f435d', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#DCBDFB">fetch</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">''https://api.example.com/data''</span><span style="color:#ADBAC7">)</span></span>
<span class="line"><span style="color:#ADBAC7">.</span><span style="color:#DCBDFB">then</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">response</span><span style="color:#F47067"> =></span><span style="color:#ADBAC7"> response.</span><span style="color:#DCBDFB">json</span><span style="color:#ADBAC7">())</span></span>
<span class="line"><span style="color:#ADBAC7">.</span><span style="color:#DCBDFB">then</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">data</span><span style="color:#F47067"> =></span><span style="color:#ADBAC7"> console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(data))</span></span>
<span class="line"><span style="color:#ADBAC7">.</span><span style="color:#DCBDFB">catch</span><span style="color:#ADBAC7">(</span><span style="color:#F69D50">error</span><span style="color:#F47067"> =></span><span style="color:#ADBAC7"> console.</span><span style="color:#DCBDFB">error</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">''Error:''</span><span style="color:#ADBAC7">, error));</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('d2e5ae08-f78c-4cf8-a8b5-7d4e218d907f', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#DCBDFB"> add</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> (</span><span style="color:#F69D50">a</span><span style="color:#ADBAC7">, </span><span style="color:#F69D50">b</span><span style="color:#ADBAC7">) </span><span style="color:#F47067">=></span><span style="color:#ADBAC7"> a </span><span style="color:#F47067">+</span><span style="color:#ADBAC7"> b;</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#DCBDFB">add</span><span style="color:#ADBAC7">(</span><span style="color:#6CB6FF">5</span><span style="color:#ADBAC7">, </span><span style="color:#6CB6FF">3</span><span style="color:#ADBAC7">)); </span><span style="color:#768390">// 8</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('df658723-466a-4c8f-b989-ab2efd4beda6', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">async</span><span style="color:#F47067"> function</span><span style="color:#DCBDFB"> fetchData</span><span style="color:#ADBAC7">() {</span></span>
<span class="line"><span style="color:#F47067">  try</span><span style="color:#ADBAC7"> {</span></span>
<span class="line"><span style="color:#F47067">    const</span><span style="color:#6CB6FF"> response</span><span style="color:#F47067"> =</span><span style="color:#F47067"> await</span><span style="color:#DCBDFB"> fetch</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">''https://api.example.com/data''</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#F47067">    const</span><span style="color:#6CB6FF"> data</span><span style="color:#F47067"> =</span><span style="color:#F47067"> await</span><span style="color:#ADBAC7"> response.</span><span style="color:#DCBDFB">json</span><span style="color:#ADBAC7">();</span></span>
<span class="line"><span style="color:#ADBAC7">    console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(data);</span></span>
<span class="line"><span style="color:#ADBAC7">  } </span><span style="color:#F47067">catch</span><span style="color:#ADBAC7"> (error) {</span></span>
<span class="line"><span style="color:#ADBAC7">    console.</span><span style="color:#DCBDFB">error</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">''Error:''</span><span style="color:#ADBAC7">, error);</span></span>
<span class="line"><span style="color:#ADBAC7">  }</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"></span>
<span class="line"><span style="color:#DCBDFB">fetchData</span><span style="color:#ADBAC7">();</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('0b75a9be-78ac-4c62-8727-08a34d9c9e33', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> name</span><span style="color:#F47067"> =</span><span style="color:#96D0FF"> ''Alice''</span><span style="color:#ADBAC7">;</span></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> age</span><span style="color:#F47067"> =</span><span style="color:#6CB6FF"> 25</span><span style="color:#ADBAC7">;</span></span>
<span class="line"></span>
<span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> person</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> { name, age };</span></span>
<span class="line"><span style="color:#ADBAC7">console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(person); </span><span style="color:#768390">// { name: ''Alice'', age: 25 }</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('051ef6f5-27cc-4020-a06d-7ea9058dc515', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> person</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> { name: </span><span style="color:#96D0FF">''Bob''</span><span style="color:#ADBAC7">, age: </span><span style="color:#6CB6FF">30</span><span style="color:#ADBAC7">, city: </span><span style="color:#96D0FF">''New York''</span><span style="color:#ADBAC7"> };</span></span>
<span class="line"><span style="color:#F47067">for</span><span style="color:#ADBAC7"> (</span><span style="color:#F47067">const</span><span style="color:#6CB6FF"> key</span><span style="color:#F47067"> in</span><span style="color:#ADBAC7"> person) {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(</span><span style="color:#96D0FF">`${</span><span style="color:#ADBAC7">key</span><span style="color:#96D0FF">}: ${</span><span style="color:#ADBAC7">person</span><span style="color:#96D0FF">[</span><span style="color:#ADBAC7">key</span><span style="color:#96D0FF">]</span><span style="color:#96D0FF">}`</span><span style="color:#ADBAC7">);</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"></span></code></pre>');
INSERT INTO `snippetHighlights` VALUES ('c34f0a47-bd5c-47d2-967b-9b19a6a8c734', '<pre class="shiki github-dark-dimmed" style="background-color:#22272e;color:#adbac7" tabindex="0"><code><span class="line"><span style="color:#F47067">const</span><span style="color:#6CB6FF"> colors</span><span style="color:#F47067"> =</span><span style="color:#ADBAC7"> [</span><span style="color:#96D0FF">''red''</span><span style="color:#ADBAC7">, </span><span style="color:#96D0FF">''green''</span><span style="color:#ADBAC7">, </span><span style="color:#96D0FF">''blue''</span><span style="color:#ADBAC7">];</span></span>
<span class="line"><span style="color:#F47067">for</span><span style="color:#ADBAC7"> (</span><span style="color:#F47067">const</span><span style="color:#6CB6FF"> color</span><span style="color:#F47067"> of</span><span style="color:#ADBAC7"> colors) {</span></span>
<span class="line"><span style="color:#ADBAC7">  console.</span><span style="color:#DCBDFB">log</span><span style="color:#ADBAC7">(color);</span></span>
<span class="line"><span style="color:#ADBAC7">}</span></span>
<span class="line"></span></code></pre>');