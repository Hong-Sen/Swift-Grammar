import Foundation

//프로퍼티
//구조체,클래스,열거형 내부에 구현가능

//1. 인스턴스 저장 프로퍼티
var name:String=""
var `class`:String="Swift"
var KoreanAge:Int = 0
//2. 인스턴스 연산 프로퍼티
var westernAge:Int{
    //읽기전용
    get{
        return KoreanAge-1
    }
    //쓰기전용
    set(inputValue){
        KoreanAge = inputValue+1
    }
}
//3. 타입 저장 프로퍼티
var typeDescription:String="학생"
//4. 타입 연산 프로퍼티
//5. 지연 저장 프로퍼티

//var selfintroduction:String{
//    get{
//        return "저는 \(self.class)반 \(name)입니다."
//    }
//}

//응용
struct Money{
    var currencyRate:Double=1100
    var dollar:Double = 0
    var won:Double{
        get{
            return dollar*currencyRate
        }
        set{
            dollar = newValue/currencyRate  //newVaule=임시적 매개변수
        }
    }
}

var moneyInMyPocket = Money()
moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)  //11000
moneyInMyPocket.dollar = 100
print(moneyInMyPocket.won)  //110000
