import Foundation

//클로저
//함수 = 이름있는 클로저
//{},->,in 실행코드
let sum:(Int,Int) -> Int = {(a:Int,b:Int) in
    return a+b
}
let sumResult:Int=sum(1,2)
print(sumResult)

//함수의 전달인자로서의 클로저
let add:(Int,Int) -> Int

add={(a:Int,b:Int) in
    return a+b
}

let substract:(Int,Int) -> Int

substract={(a:Int,b:Int) in
    return a-b
}

let divide:(Int,Int) -> Int
divide={(a:Int,b:Int) in
    return a/b
}

func calculate(a:Int, b:Int, method:(Int,Int)->Int) ->Int{
    return method(a,b)
}

var calculated:Int

calculated = calculate(a:50,b:10,method:add)
print(calculated)

calculated = calculate(a:50,b:10,method:substract)
print(calculated)

calculated = calculate(a:50,b:10,method:divide)
print(calculated)


//후행 클로저
//클로저가 함수의 마지막 전달일자일때, 마지막 매개변수 이름을 생략한 후 함수 소괄호 외부에 클로저를 구현
var result:Int

result = calculate(a: 10, b: 10){(left:Int,right:Int) -> Int in
    return left+right
}

//반환타입 생략
//calculate 함수의 method매개변수는 Int타입을 반환할 것이라는 사실을 컴파일러도 알기 때문에 굳이 클로저에서 반환타입을 명시해 주지 않아도 됩니다.
result=calculate(a: 10, b: 10, method: {(left:Int,right:Int)in
    return left+right
})

