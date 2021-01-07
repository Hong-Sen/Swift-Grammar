# Swift
 
 1. Class와 Struct 차이점
 
||Class|Struct|
|------|---|---|
|type|reference|value|
|상속|O|X|
|extension|O|O|

+ reference
  + 데이터를 전달할 때 값의 메모리 위치를 전달

+ value
   + 데이터를 전달할 때 값을 복사하여 전달
   
+ EX)
   +struct
 ```swift
 struct ValueType {
    var property = 1
}
let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance  //복사
secondStructInstance.property = 2
print("first struct instance property : \(firstStructInstance.property)")    // 출력:1
print("second struct instance property : \(secondStructInstance.property)")  // 출력:2
 ```
 
  +class
  ```swift
  class ReferenceType {
    var property = 1
}
let firstClassReference = ReferenceType()
let secondClassReference = firstClassReference  //참조
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)")    // 출력:2
print("second class reference property : \(secondClassReference.property)")  // 출력:2
```
