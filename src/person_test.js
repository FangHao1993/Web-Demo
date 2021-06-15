const person = require("./person").default.default;
const p1 = new person("Bill",25);
const p2 = new person;
console.log(p1.toJSON());
console.log(p2.toJSON());