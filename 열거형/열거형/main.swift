import Foundation

//열거형
enum language{
    case ios
    case c
    case java
}

enum Weekday{
    case mon
    case tue
    case wen
    case thu,fri,sat,sun
}

var day: Weekday = Weekday.fri
day = .fri
print(day)

//switch구문에서 열거형사용하면 좋음
switch day{
case.mon,.tue,.thu,.wen:
    print("평일")
case.fri:
    print("불금")
case.sat,.sun:
    print("알바가는 주말")
}

//rawValue원시값
//case별로 다른 값을 가져야함
//자동으로 1이 증가된 값이 할당됨
enum Fruit:Int{
    case apple = 0
    case grape = 1
    case peach    // 자동으로 2로 설정됨
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

enum School:String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.university.rawValue == \(School.university.rawValue)")

//rawVaule를 통해 초기화 가능
//case에 해당하지 않을 수 있으므로 rawVaule를 통해 초기화 한 인스턴스는 옵셔널 타입!
let apple:Fruit?=Fruit(rawValue: 0)
if let orange:Fruit = Fruit(rawValue: 5){
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다.")
}
else{
    print("rawValue 5에 해당하는 케이스가 없습니다.")
}

//매서드도 추가가능
enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다")
        }
    }
}

var present:Month=Month.jan
present.printMessage()

