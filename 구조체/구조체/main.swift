import Foundation

//구조체
struct Sample {
    //가변 프로퍼티
    var mutableProperty:Int=100
    //불변 프로퍼티
    let immutableProperty:Int=200
    //타입 프로퍼티(static: 타입자체가 사용하는 프로퍼티)
    static var typeProperty:Int=300
    //인스턴스 메서드
    func instanceMethod(){
        print("Instance method")
    }
    //타입 매서드
    static func typeMethod(){
        print("type method")
    }
}

//가변 인스턴스 생성
var m:Sample=Sample()
m.mutableProperty = 400
//m.immutableProperty = 500

//불변 인스턴스 생성
let i:Sample=Sample()
//i.mutableProperty = 500
//i.immutableProperty = 500

//타입 프로퍼티 및 매서드
Sample.typeProperty = 500
Sample.typeMethod()
//인스턴스에서는 타입프로퍼티,타입메서드 사용X
//m.typeProperty = 500
//m.typeMethod()


//EX
struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift" //`로 묶어주면 이름으로 사용할 수 있음 (option + ~)
    static func selfintroduce(){
        print("학생타입입니다")
    }
    func selfintroduce(){
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfintroduce()
var sen:Student = Student()
sen.name = "Sen"
sen.class = "A반"
sen.selfintroduce()

let dan:Student = Student()
//dan.name = "dan" 불변 인스턴스!
dan.selfintroduce()
