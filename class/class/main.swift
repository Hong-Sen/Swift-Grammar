import Foundation

//클래스
//구조체=value타입, 클래스=reference타입
class Sample {
    //가변 프로퍼티
    var mutableProperty:Int=100
    //불변 프로퍼티
    let immutableProperty:Int=200
    //타입 프로퍼티
    static var typeProperty:Int=300
    //인스턴스 메소드
    func instanceMethod(){
        print("instance Method")
    }
    //타입메서트
    //1.상속시 재정의 불가 타입 메서드
    static func typeMethod(){
        print("type method - static")
    }
    //2.상속시 재정의 가능 타입 메서드
    class func classMethod(){
        print("type method - class")
    }
}

var mutableReference:Sample=Sample()
mutableReference.mutableProperty = 500
//mutableReference.immutableProperty = 500

let immutableReference:Sample = Sample()
immutableReference.mutableProperty = 500  //클래스의 인스턴스는 참조타입이므로 let으로 선언 되었더라도 인스턴스프로퍼티 값 변경이 가능
//immutableReference.immutableProperty = 500 //참조타입이더라도 불변인스턴스는 수정불가

Sample.typeProperty = 300
Sample.typeMethod()


//EX
class Student{
    var name: String = "unknown"
    var `class`: String = "SWIFT"
    class func selfintroduce(){
        print("학생타입입니다")
    }
    func selfintroduce(){
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfintroduce()
var sen : Student=Student()
sen.name = "sen"
sen.class = "A반"
sen.selfintroduce()

//class는 구조체와다르게 불변인스턴스여도 가변프로퍼티의 값 변경 가능!!
let dan:Student = Student()
dan.name = "dan"
dan.class = "B반"
dan.selfintroduce()
