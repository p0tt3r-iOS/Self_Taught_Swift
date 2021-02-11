import UIKit

// 15-1 for-in 구문과 맵 메서드의 ㅏㅅ용 비교
let numbers: [Int] = [0, 1, 2, 3, 4]

var doubledNumbers: [Int] = [Int]()
var strings: [String] = [String]()

// for 구문 사용
for number in numbers {
    doubledNumbers.append(number * 2)
    strings.append("\(number)")
}

print(doubledNumbers)   // [0, 2, 4, 6, 8]
print(strings)          // ["0", "1", "2", "3", "4"]


// map 메서드 사용
doubledNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})
strings = numbers.map({ (number: Int) -> String in
    return "\(number)"
})

print(doubledNumbers)   // [0, 2, 4, 6, 8]
print(strings)          // ["0", "1", "2", "3", "4"]



// 15-2 클로저 표현식의 간략화
// 매개변수 및 반환 타입 생략
doubledNumbers = numbers.map({ return $0 * 2 })
print(doubledNumbers)   // [0, 2, 4, 6, 8]

// 반환 키워드 생략
doubledNumbers = numbers.map({ $0 * 2})
print(doubledNumbers)   // [0, 2, 4, 6, 8]

// 후행 클로저 사용
doubledNumbers = numbers.map { $0 * 2}
print(doubledNumbers)   // [0, 2, 4, 6, 8]



// 15-3 클로저의 반복 사용
let evenNumbers: [Int] = [0, 2, 4, 6, 8]
let oddNumbers: [Int] = [0, 1, 3, 5, 7]
let multiplyTwo: (Int) -> Int = { $0 * 2 }

let doubledEvenNumbers: [Int] = evenNumbers.map(multiplyTwo)
print(doubledEvenNumbers)   // [0, 4, 8, 12, 16]

let doubledOddNumbers: [Int] = oddNumbers.map(multiplyTwo)
print(doubledOddNumbers)    // [0, 2, 6, 10, 14]



// 15-4 다양한 컨테이너 타입에서의 맵의 활용
let alphabetDictionary: [String: String] = ["a":"A", "b":"B"]

var keys: [String] = alphabetDictionary.map{ (tuple: (String, String)) -> String in
    return tuple.0
}

keys = alphabetDictionary.map { $0.0 }

let values: [String] = alphabetDictionary.map { $0.1 }
print(keys)     // ["b", "a"]
print(values)   // ["B", "A"]


var numberSet: Set<Int> = [1, 2, 3, 4, 5]
let resultSet = numberSet.map{ $0 * 2 }
print(resultSet)    // [4, 2, 6, 8, 10] - Set은 순서가 없기 떄문에 무작위 출력

let optionalInt: Int? = 3
let resultInt: Int? = optionalInt.map{ $0 * 2 }
print(resultInt)    // 6 - 경고 발생 이유는 타입캐스팅 TIP에서 설명합니다.

let range: CountableClosedRange = (0...3)
let resultRange: [Int] = range.map{ $0 * 2 }
print(resultRange)  // [0, 2, 4, 6]
