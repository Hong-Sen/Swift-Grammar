//swift 데이터타입 : Bool,Int,UInt,Float,Double,Character,String
import Foundation

var someBool: Bool = true
someBool = false
//bool = 1 안됨

var someInt:Int = -23

var someUInt:UInt = 100  //양의 정수 타입

var someFloat:Float = 3.14 //32bit 부동소수형 실수
someFloat = 3 //정수도 가능

var someDouble:Double = 3.14 //64bit 부동소수형 실수
someDouble = 3

var someCharacter:Character = "😄"
someCharacter = "A"
someCharacter = "가"
someCharacter = "🇰🇷"

var someString: String = "하핳"
someString  = someString + "호홓"
print(someString)

//someCharacter = someString 오류!

