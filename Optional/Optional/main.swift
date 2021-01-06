import Foundation

//옵셔널: 값이 있을 수도, 없을 수록 있음을 표현
//         nill 할당 가능
//옵셔널 사용 이유
//1. 명시적 표현
// - nill의 가능성을 코드만으로 표현가능
// - 주석 작성 시간 절약
//2. 안전한 사용
// - 전달받은 값이 옵셔널이 아니라면 nil체크하지 않고 사용가능
// - 예외 상황을 최소화하는 안전한 코딩

func someFuction(someOptionalParam: Int?){
    //
}

//!를 이용한 암시적 추출 옵셔널 (데이터타입! 띄어쓰기X)
var implicitlyUnwarrappedOptionalValue: Int! = 100
implicitlyUnwarrappedOptionalValue += 1 //기존변수처럼 사용가능
implicitlyUnwarrappedOptionalValue = nil
//implicitlyUnwarrappedOptionalValue += 1 //nil값이면 잘못된 접근으로 런타임오류 발생
switch implicitlyUnwarrappedOptionalValue{
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

//?를 이용한 옵셔널
var optionalValue:Int? = 100
optionalValue = nil
// optionalValue += 1  기존변수처럼 사용불가

switch  optionalValue{
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}


//옵셔널 추출
//옵셔널 바인딩
//1. if-let
func printName(name:String){
    print(name)
}

var myName:String? = nil
if let name:String = myName{
    printName(name: name)
}
else{
    print("myName = nil")
}

var yourName:String? = nil

if let name = myName, let friend = yourName{
    print("\(name) and \(friend)")
}

yourName = "dan"

if let name = myName, let friend = yourName{
    print("\(name) and \(friend)")
}

//2. 강제추출
var myName1:String? = "yagom"
var yourName1:String!=nil
printName(name: myName1!)  //!를 붙여서 강제추출(만약 nil인 경우 런타임 오류가 발생)
myName1 = nil
//printName(name: yourName1)
//print(myName1!) 런타임오류

