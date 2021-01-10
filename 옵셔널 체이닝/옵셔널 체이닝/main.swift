//옵셔널 체이닝
class Person{
    var name:String
    var job:String?
    var home:Apartment?
    
    init(name:String) {
        self.name = name
    }
}

class Apartment{
    var bulidingNum:String
    var roomNum:String
    var `guard`:Person?
    var owner:Person?
    
    init(doing:String, ho: String) {
        bulidingNum = doing
        roomNum = ho
    }
}

let yagom:Person? = Person(name: "yagom")
let apart:Apartment? = Apartment(doing: "101", ho: "302")
let superman:Person? = Person(name: "superman")

//우리집의 경비원의 직업은?
//옵셔널제이닝 사용X 버전
func guardJob(owner:Person?)  {
    if let owner=owner{
        if let home = owner.home{
            if let `guard` = home.guard{
                if let guardJob = `guard`.job{
                    print("우리집 경비원의 직업은\(guardJob)입니다.")
                }
                else{
                    print("우리집 경비원은 직업이 없어요.")
                }
            }
        }
    }
}

guardJob(owner: yagom)

//옵셔널 체이닝 사용 버전
func guardJobOPtionalChaining(owner:Person?)  {
    if let guardJob = owner?.home?.guard?.job{
        print("우리집 경비원의 직업은\(guardJob)입니다.")
    }
    else{
        print("우리집 경비원은 직업이 없어요.")
    }
}

guardJobOPtionalChaining(owner: yagom)


//nil 병합 연산자
//옵셔널 값이 nil일 경우, 우측의 값 반환
//띄어쓰기 주의!!
var guardjob:String
guardjob=yagom?.home?.guard?.job ?? "슈펴맨"
print(guardjob)
