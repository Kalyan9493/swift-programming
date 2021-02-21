class Person{
    var name:String?   // creating optional using ? symbol
    var age=0
    var color="Black"
}

let pson = Person()

pson.age = 20

// Optional Binding
pson.name = "Kalyan"


// Optional UnBinding
if let pname = pson.name{
    print("My name is \(pname) and My age is \(pson.age) ")
}

// Forcely Un Binding the Optional
// have to use only when exactly value is present , otherwise will get error.
print(pson.name! + "\(pson.age)")

