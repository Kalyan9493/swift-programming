class Employee{
    var name=""
    var salary=0
    
    func doWork(){
        print("Hi My name is \(name) and my salary is \(salary) and I am doing work")
    }
}

// Example for inheritance and override

class Manager:Employee{
    override func doWork(){
        super.doWork()
        print("salary increased by \(super.salary+100)")
    }
}

let manager = Manager()

manager.name="kkkr"
manager.salary=1000
print(manager.doWork())


