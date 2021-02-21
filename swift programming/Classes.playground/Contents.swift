class Employee{
    var name: String = ""
    var age :Int = 0
    var salary :Double = 0.0
    
    func doWork(){
        print("Hi My Name is \(name) and I am Doing Work")
        salary += 100
    }
    
}

var e = Employee()

e.name = "Kalyan"
e.age = 23
e.salary = 1000

print(e.self)
print(e.name)
print(e.age)
print(e.salary)


