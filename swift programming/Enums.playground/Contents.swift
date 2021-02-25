
enum SocialPlatform{
    case facebook
    case linkedIn
    case twitter
    case whatsApp
}


func shareImage(on platform:SocialPlatform){
    switch platform{
        
    case .facebook:
        print("Shared in facebook")
    case .linkedIn:
        print("Shared in linkedIn")
    case .twitter:
        print("Shared in twitter")
    case .whatsApp:
        print("Shared in whatsApp")
    }
}

shareImage(on: .facebook)
