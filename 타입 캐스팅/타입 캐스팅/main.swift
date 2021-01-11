//타입 캐스팅
class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("멤버쉽 트레이닝을 갑니다 신남!")
    }
}

var hana: Person = Person()
var dul: Student = Student()
var set: UniversityStudent = UniversityStudent()

//is를 사용하여 타입 확인
var result:Bool

result = hana is Person //true
result = hana is Student //false
result = hana is UniversityStudent //false

result = dul is Person // true
result = dul is Student // true
result = dul is UniversityStudent // false

result = set is Person // true
result = set is Student // true
result = set is UniversityStudent // true

//업캐스팅 as
//부모클래스의 인스턴스로 사용할 수 있게 해줌
var mk:Person = UniversityStudent() as Person
result = mk is UniversityStudent //true
result = mk is Student //true

var jenny: Student = Student()

var jina:Any=Person()

//다운캐스팅
//1.조건부 다운캐스팅 as?
var optionalCasted:Student?
optionalCasted = mk as? UniversityStudent
optionalCasted = jenny as? UniversityStudent // nil
optionalCasted = jina as? UniversityStudent // nil
optionalCasted = jina as? Student // nil

//2.강제 다운캐스팅 as!
var forcedCasted: Student
forcedCasted = mk as! UniversityStudent
//forcedCasted = jenny as! UniversityStudent // 런타임 오류
//forcedCasted = jina as! UniversityStudent // 런타임 오류
//forcedCasted = jina as! Student // 런타임 오류


