import Foundation
//조건문
//if
let SomeIntenger: Int = 20
if SomeIntenger < 100{
    print("100미만")
}
else if SomeIntenger>100{
    print("100초과")
}
else{
    print("100")
}

//switch
switch SomeIntenger{
case 0:
    print("zero")
case 1..<100:
    print("1~100")
    fallthrough
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

//break없이도 자동으로 case마다 break
//fallthrough 을 사용하면 break를 무시할 수 있음
//default구문을 반드시 작성




//반복문
//for-in
//for item in items{}
var integers = [1,2,3]
let people = ["yagom":10, "eric":15, "mike":12]

for integer in integers{
    print(integer)
}

for(name,age) in people{
    print("\(name): \(age)")
}

//while
while integers.count > 1{
    integers.removeLast()
}


//repeat-while
repeat{
    integers.removeLast()
}
while integers.count>0
