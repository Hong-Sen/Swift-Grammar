

//상속
//클래스,프로토콜에서만 가능
//단일상속

class Person{
    var name:String=""
    
    func selfIntroduce(){
        print("저는 \(name) 입니다.")
    }
    //final - 재정의 방지
    final func sayHello(){
        print("hello")
    }
    //static - 재정의 방지
    static func typeMethod(){
        print("typeMethod-static")
    }
    //class - 재정의 가능
    class func classMethod(){
        print("typeMethod - class")
    }
    //final class = static 재정의 불가
    final class func finalClassMethod(){
        print("typeMethod - final class")
    }
}

class Student:Person{
    var major:String=""
    //override
    override func selfIntroduce() {
        print("저는 \(major)전공이고, \(name)입니다.")
    }
    //override
    override class func classMethod() {
        print("overriden type method - class")
    }
}

let sen:Person=Person()
let dan:Student=Student()

sen.name = "sen"
dan.name = "dan"
dan.major = "military"

sen.selfIntroduce()
dan.selfIntroduce()

Person.typeMethod()
Person.classMethod()
Person.finalClassMethod()

Student.typeMethod()
Student.classMethod()
Student.finalClassMethod()

