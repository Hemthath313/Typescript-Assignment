var str:string="hemthath";  //string type
console.log(str);

var b:Boolean=true;
console.log(b);


var age:number=50;     //numeric type
if (age<60) {
    age+=10;
}
console.log(age);


var list:number[]=[1,2,3,4];   //Arrays
console.log(list)

var num:number[]=[]  //Creating empty array and inserting the number.
num.push(5,6);
console.log(num);


var tup:[number,string]=[1,"Hemthath"]    //tuples is used to store the collection of values of varied types.mehtods pop,push
console.log(tup);

var tuple=[1,2,"hem"]  //way to clear the values in the tuples 
tuple=[]
console.log(tuple);

var tuple1=["hemthath","senthil","karthik","praveen"] //accessing the elements in tuples
console.log(tuple1[0]);
tuple1[1]="kumar";   //updating values in tuples
console.log(tuple1);


enum direction{    //enums that represent group of constants two types of enums string,number
    east =0,
    west,
    north,
    south
}
console.log(direction);


let add =(a:number,b:number)=>{   //function using strict datatypes.
    return a+b;
}
console.log(add(5,10))























