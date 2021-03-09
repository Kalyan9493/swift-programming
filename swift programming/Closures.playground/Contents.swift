import UIKit

var array = [10,4,5,2,4,5,6,8,9]

func addOne(arr:Int) -> Int{
    return arr+1
}

// Using Normal Function
print(array.map(addOne))


// Using Closures

print(array.map({$0 + 1}))


