//map
//컨테이너 내부의 기존 데이터를 변형하여 새로운 컨테이너를 생성
let numbers:[Int] = [0,1,2,3,4]
var doubledNumbers:[Int]
var strings:[String]

/*
//for구문 사용할때
doubledNumbers = [Int]()
strings = [String]()

for number in numbers{
    doubledNumbers.append(number*2)
    strings.append("\(number)")
}

print(doubledNumbers)
print(strings)
*/

//map매서드 사용할때
doubledNumbers = numbers.map({(number:Int) -> Int in
    return number*2
})

strings = numbers.map({(number:Int) -> String in
    return "\(number)"
})

print(doubledNumbers)
print(strings)

//map + closer
doubledNumbers = numbers.map{$0*2}
print(doubledNumbers)


//filter
//컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출
//for 구문 사용할때
var filtered:[Int]=[Int]()

for number in numbers{
    if number % 2 == 0{
        filtered.append(number)
    }
}

print(filtered)  //[0, 2, 4]

//filter 매서드 사용할때
let evenNumbers:[Int]=numbers.filter{(number:Int) -> Bool in
    return number % 2 == 0
}
print(evenNumbers)  //[0, 2, 4]

//filter + closer
let oddNumbers:[Int]=numbers.filter{
    $0 % 2 != 0
}
print(oddNumbers)  //[1, 3]


//reduce
//컨테이너 내부의 콘텐츠를 하나로 통합
let someNumbers:[Int]=[2,8,15]

//for구문 사용할때
var result:Int=0
for n in someNumbers{
    result += n
}

print(result) //25

//reduce 사용할때
let sum:Int=someNumbers.reduce(0/*초기값*/, {(first:Int,second:Int) -> Int in
    return first+second
})

print(sum)  //25

var subtract:Int = someNumbers.reduce(0, {(first:Int,second:Int) -> Int in
    return first - second  
})

print(subtract)  //-25

let sumFromThree = someNumbers.reduce(3){$0+$1}
print(sumFromThree)  //28
