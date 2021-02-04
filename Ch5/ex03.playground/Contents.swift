import UIKit

// 5-7 전위 연산자 구현과 사용

prefix operator **

prefix func ** (value: Int) -> Int {
    return value * value
}

let minusFive: Int = -5
let sqrtMinusFive: Int = **minusFive

print(sqrtMinusFive)



// 5-8 전위 연산자 함수 중복 정의와 사용

prefix func ! (value: String) -> Bool {
    return value.isEmpty
}

var stringValue: String = "yagom"
var isEmptyString: Bool = !stringValue

print(isEmptyString)    // false

stringValue = ""
isEmptyString = !stringValue

print(isEmptyString)    // true



// 5-9 사용자 정의 전위 연산자 함수 중복 정의와 사용

prefix func ** (value:String) -> String {
    return value + " " + value
}

let resultString: String = **"yagom"

print(resultString)

// ---------------------------------------------------
