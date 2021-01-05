import Foundation

//Array
var integers: Array<Int> = Array<Int>()
var integers1: Array<Int> = [Int]()
var integers2: [Int] = [Int]()
var integers3: [Int] = []
var integers4 = [Int]()

//맴버 추가
integers.append(1)
integers.append(100)
integers.append(303)

print(integers)

//맴버 교체
integers[0] = 55

print(integers)

//맴버 삭제
integers.remove(at: 1)
integers.removeLast()
integers.removeAll()

//맴버 수 확인
print(integers.count)

//불변array(맴버추가 삭제 불가)
let immutableArray = [1,2,3]



//Dictionary
var anyDictionary: Dictionary<String,Any> = Dictionary<String,Any>()
var anyDictionary1:Dictionary<String,Any> = [String:Any]()
var anyDictionary2: [String:Any] = [String:Any]()
var anyDictionary3: [String:Any] = [:]
var anyDictionary4 = [String:Any]()

//키에 해당하는 값 할당
anyDictionary["key1"] = "value1"
anyDictionary["key2"] = 100

print(anyDictionary)

//키값 제거
anyDictionary.removeValue(forKey: "key2")

print(anyDictionary)

//키값 변경
anyDictionary["key1"] = 500

print(anyDictionary)

//불변 Dictionary
let initalizedDictionary = ["name":"sen", "age":"23"]

print(initalizedDictionary)



//Set
var integerSet:Set<Int> = Set<Int>()

//맴버추가
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

print(integerSet) //중복된 값 저장X

//맴버포함여부
print(integerSet.contains(99))
print(integerSet.contains(50))

//맴버삭제
integerSet.remove(99)
integerSet.removeFirst()

//맴버 개수
print(integerSet.count)

let setA:Set<Int> = [1,2,3,4,5]
let setB:Set<Int> = [3,4,5,6,7]

//합집합
let union:Set<Int> = setA.union(setB)
print(union)

//오름차순 정렬
let sortedUnion:[Int] = union.sorted()
print(sortedUnion)

//교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection)

//차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting)


