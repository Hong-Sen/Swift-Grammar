//프로토콜
//특정역할을 수행하기 위한 메서드,프로퍼티,요구사항등의 청사진을 정의
protocol Talkable {
    var topic:String{get set} //읽기,쓰기가능 프로퍼티
    var language:String{get} //읽기 가능 프로퍼티
    
    func talk()  //구현까지 안해도 됨.
    
    init(topic: String, language:String)
}

//Person구조체는 Talkable 프로토콜 채택
struct Person:Talkable {
    var topic: String
    var language: String
    //읽기,쓰기 프로퍼티 요구는 연산프로퍼티로 대체 가능
//    var language:String{ return "한국어"}
//    var topic: String{
//        get{
//            return self.topic
//        }
//        set{
//            self.topic = newValue
//        }
//    }
    
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다.")
    }
    
    init(topic:String,language:String) {
        self.topic = topic
        self.language = language
    }
}

//프로토콜 상속
//다중상속 가능
protocol Readable {
    func read()
}
protocol Writeable {
    func write()
}
protocol ReadSpeakable: Readable {
    func speak()
}
protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}

struct SomeType: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    func write() {
        print("Write")
    }
    func speak() {
        print("Speak")
    }
}
