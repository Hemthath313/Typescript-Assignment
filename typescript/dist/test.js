"use strict";
var str = "hemthath"; //string type
console.log(str);
var b = true;
console.log(b);
var age = 50; //numeric type
if (age < 60) {
    age += 10;
}
console.log(age);
var list = [1, 2, 3, 4]; //Arrays
console.log(list);
var num = []; //Creating empty array and inserting the number.
num.push(5, 6);
console.log(num);
var tup = [1, "Hemthath"]; //tuples is used to store the collection of values of varied types.mehtods pop,push
console.log(tup);
var tuple = [1, 2, "hem"]; //way to clear the values in the tuples 
tuple = [];
console.log(tuple);
var tuple1 = ["hemthath", "senthil", "karthik", "praveen"]; //accessing the elements in tuples
console.log(tuple1[0]);
tuple1[1] = "kumar"; //updating values in tuples
console.log(tuple1);
var direction;
(function (direction) {
    direction[direction["east"] = 0] = "east";
    direction[direction["west"] = 1] = "west";
    direction[direction["north"] = 2] = "north";
    direction[direction["south"] = 3] = "south";
})(direction || (direction = {}));
console.log(direction);
let add = (a, b) => {
    return a + b;
};
console.log(add(5, 10));
//# sourceMappingURL=test.js.map