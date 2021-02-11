import UIKit

var a=10;
var b=20;

// if statement
if a>b{
    print("a is greater");
}else{
    print("b is greater");
}

a=10;
b=10;
// if  else-if statements
if a>b{
    print("a is greater");
}else if b>a{
    print("b is greater");
}else if a==b{
    print("both are equal");
}else{
    print("wrong Option");
}

// switch statement

var c = 1.2;

switch c{

case 1.2: print("A");
    break;
case 1.3: print("B");
    break;
default: print("Default");
}

