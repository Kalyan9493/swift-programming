protocol AdvancedLifeSupport{
    func performCPR()
}

class EmergencyHandler{
    var delegate:AdvancedLifeSupport?
    
    func assessSituation(){
        print("Hello  , What Happened?")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

class Paramedic:AdvancedLifeSupport{

    init(handler:EmergencyHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("chest compression is done, 30 per minute , now fine")
    }
}

struct Doctor:AdvancedLifeSupport{
    func performCPR() {
        print("Hi Iam a Doctor chest compression is done, 30 per minute , now fine")
    }
    
    init(handler:EmergencyHandler) {
        handler.delegate = self
    }
    
}

let john = EmergencyHandler()
let rock = Paramedic(handler: john)
let kalyan = Doctor(handler: john)
john.assessSituation()
john.medicalEmergency()
