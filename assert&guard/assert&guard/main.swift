//assertion
var someInt:Int = 0
//someInt==0이면 통과, 아니면 동작중지
assert(someInt==0, "someInt != 0")

func assertFunction(age:Int?){
    assert(age != nil)
    assert((age!>=0) && (age!<=130))
    print("나이는 \(age!)세 입니다.")
}
assertFunction(age: 23)

//guard 빠른종료
//잘못된 값의 전달 시 특정 실행구문을 빠르게 종료
func guardFunction(age:Int?){
    guard let unwarrapedAge = age,
          unwarrapedAge < 130,
          unwarrapedAge >= 0 else{
            print("나이값 입력이 잘못되었습니다.")
            return  //코드블럭을 종료하는 지시어(return,break)가 꼭 있어야함
          }
    print("나이는 \(age!)세 입니다.")
}
guardFunction(age: 30)

func someFunction(info:[String:Any]){
    guard let name=info["name"]as? String else {
        return
    }
    guard let age=info["age"]as? String else {
        return
    }
    print("\(name): \(age)")
}
someFunction(info: ["name":"sen","age":"23"])
