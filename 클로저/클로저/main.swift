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
