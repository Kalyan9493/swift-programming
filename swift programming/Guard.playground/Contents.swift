func greaterThanFive(number:Int) -> Bool{
    
    guard  number > 5 else {return false}
    return true
    
}
// guard is used as alternative for if-else statement
print(greaterThanFive(number:4))
