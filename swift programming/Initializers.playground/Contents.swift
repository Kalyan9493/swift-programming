class Person{
    var name=""
    var age=0
    
    init(){
        
    }
    init(_ name:String,_ age:Int){   // initializing the varibles dynamically
        self.name = name
        self.age = age
    }
}

let pson = Person()

let pson1 = Person("Kalyan",24)

print(pson1.name)
