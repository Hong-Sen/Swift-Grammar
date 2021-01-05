//
//  main.swift
//  함수
//
//  Created by 홍세은 on 2021/01/02.
//

import Foundation

func sum(a:Int, b:Int) -> Int {
    return a+b
}

//반환값 없는 함수(void생략가능)
func printName(name:String) -> Void {
    print(name)
}

func printMyName(name:String){
    print(name)
}

//매개변수가 없는 함수
func max() -> Int {
    return Int.max
}

//매개변수와 반환값이 없는 함수
func hello() -> Void {
    print("hello")
}

func bye() {print("bye")}

//함수호출
sum(a: 3, b: 5)
printName(name: "Sen")
print(max())
hello()
bye()


//매개변수 기본 값
func greeting(friend:String, me:String = "sen")  {
    print("I'm \(me). Nice to meet you \(friend)")
}

greeting(friend: "dan")
greeting(friend: "dan", me: "ssen")

//전달인자 레이블
func greeting(to friend: String, from me:String) -> Void {
    print("I'm \(me). Nice to meet you \(friend)")
}

greeting(to: "young", from: "ho")

//가변 매개변수
func sayHi(me:String,friends:String...) -> String {
    return "Hi \(friends)! I'm \(me)"
}
print(sayHi(me: "sen", friends: "dan","yon","ho"))
print(sayHi(me: "sen"))


//데이터 타입으로서의 함수
var someFunction:(String,String)->Void=greeting(to:from:)
someFunction("Dan","Sen")

someFunction = greeting(friend:me:)
someFunction("Dan","Sen")

func another(function:(String,String)) -> Void {
    function("jenny", "sera")
}
another(function: greeting(friend:me:))
