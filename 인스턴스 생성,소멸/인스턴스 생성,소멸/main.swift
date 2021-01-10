//인스턴스 생성: 이니셜라이저
//인스턴스는 초기화와 동시에 모든 프로퍼티에 유효한 값이 할당되어야 함
class PersonA{
    //모든 프로퍼티에 기본값 할당
    var name:String="unknown"
    var age:Int=0
    var nickname:String="nick"
}
//인스턴스 생성
let jackson:PersonA=PersonA()
jackson.name = "jackson"
jackson.age = 23
jackson.nickname = "j"

//프로퍼티에 초기값을 지정하기 어려운 경우->init(이니셜라이저)를 통해 초기값 전달
class PersonB{
    var name:String
    var age:Int
    var nickname:String
    //이니셜라이저
    init(name:String, age:Int, nickname:String) {
        self.name = name
        self.age = age
        self.nickname = nickname
    }
}

let hana:PersonB = PersonB(name:"hana",age:24,nickname: "hanadul")

//프로퍼티의 초기값이 필요없을 때 -> 옵셔널 사용
class PersonC{
    var name:String
    var age:Int
    var nickname:String?
    
    init(name:String,age:Int,nickname:String) {
        self.name = name
        self.age = age
        self.nickname = nickname
    }
    //nickname이 필요없는 init
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
}

let jenny:PersonC=PersonC(name: "jenny", age: 17)
let chuck:PersonC=PersonC(name: "chuck", age: 19, nickname: "bath")

//임시적 추출 옵셔널:인스턴스 사용엔 꼭 필요하지만 초기값 할당X
class Puppy{
    var name:String
    var owner:PersonC!
    
    init(name:String) {
        self.name = name
    }
    
    func goOut(){
        print("\(name)가 주인 \(owner.name)과 산책을 합니다.")
    }
}

let doldol:Puppy=Puppy(name: "doldol")
//doldol.goOut() 주인이 없는 상태라 오류
doldol.owner = jenny
doldol.goOut()

//실패가능한 이니셜라이저
//이니셜라잊 초기값이 잘못된 경우 인스턴스 생성이 실패
//인스턴스 생성이 실패 -> nil 반환
//init? 사용
class PersonD{
    var name:String
    var age:Int
    var nickname:String?
    
    init?(name:String, age:Int) {
        if(0...120).contains(age)==false{
            return nil
        }
        if name.utf8.count == 0{
            return nil
        }
        self.name = name
        self.age = age
    }
}

let john:PersonD? = PersonD(name: "john", age: 23)
let joker:PersonD? = PersonD(name: "joker", age: 123)
let batman:PersonD? = PersonD(name: "", age: 38)

print(joker)  //출력:nil
print(batman) //출력:nil

//디이니셜라이저:deinit
//클래스의 인스턴스가 메모리에서 해제되는 시점에 호출
//클래스타입에만 구현가능
class PersonE{
    var name:String
    var pet:Puppy?
    var child:PersonC
    
    init(name:String,child:PersonC) {
        self.name = name
        self.child = child
    }
    
    deinit {
        if let petName = pet?.name{
            print("\(name)가 \(child.name)에게 \(petName)을 인도합니다.")
            self.pet?.owner = child
        }
    }
}

var steve:PersonE? = PersonE(name: "steve", child: jenny)
steve?.pet = doldol
steve = nil
