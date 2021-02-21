var names:[Any] = ["Kalyan","kumar", "reddy", 20 , 10.5]

var numbers:[Int] = [1,2,3,4,5,6,7]

for num in numbers{
    print(num)
}


// dictionaries

var mobiles = ["samsung":2,"nokia":3,"zen":1]

for mobile in mobiles{
    print(mobile) // prints the object with key value.
}

for (key,value) in mobiles{
    print(key)
    print(value)
}

