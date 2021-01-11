//익스텐션
//구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가 할 수 있는 기능(재정의는 X)
//외부에서 가져온 타입에 내가 원하는 기능을 추가
//추가할 수 있는 기능
// - 연산 타입 프로퍼티/연산 인스턴스 프로퍼티
// - 타입 매서드/인스턴스 매서드
// - 이니셜라이저
// - 서브스크립트
// - 중첩타입
// - 특정 프로토콜을 준수할 수 있도록 기능추가

//클래스상속 vs 익스텐션
//클래스 상속: 클래스타입만 가능
//             특정 타입을 물려받아 하나의 새로운 타입을 정의하고 추가 기능을 구현하는 수직확장
//익스텐션: 기존의 타입에 기능을 추가하는 수평 확장
            
extension Int{
    var isEven:Bool{
        return self%2 == 0
    }
    var isOdd:Bool{
        return self%2 == 1
    }
}

print(1.isEven) // false
print(2.isEven) // true
print(1.isOdd)  // true
print(2.isOdd)  // false

var num:Int = 3
print(num.isEven) //false
print(num.isOdd)  //true

num=4
print(num.isEven) //true
print(num.isOdd)  //false

extension Int{
    func multiply(by n:Int)->Int{
        return self*n
    }
}

print(3.multiply(by: 2)) //6

extension String{
    init(int: Int){
        self = "\(int)"
    }
}

let s:String = String(int:5)
