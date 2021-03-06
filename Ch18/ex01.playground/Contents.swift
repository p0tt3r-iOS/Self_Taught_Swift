import UIKit

// 18-1 기반클래스 Person
class Person {
    var name: String = ""
    var age: Int = 0
    
    var introduction: String {
        return "이름: \(name), 나이: \(age)"
    }
    
    func speak() {
        print("가나다라마바사")
    }
}

let yagom: Person = Person()
yagom.name = "yagom"
yagom.age = 99
print(yagom.introduction)   // 이름: yagom, 나이: 99
yagom.speak()               // 가나다라마바사



// 클래스 상속 형태
/*
 class 클래스이름: 부모클래스이름 {
    프로퍼티와 메서드들
 }
 */

// 18-2 Person 클래스를 상속받은 Student 클래스
class Student: Person {
    var grade: String = "F"
    
    func study() {
        print("Study hard...")
    }
}

let jay: Student = Student()
jay.name = "jay"
jay.age = 10
jay.grade = "A"
print(jay.introduction) // 이름: jay, 나이: 10
jay.speak() // 가나다라마바사
jay.study() // Study hard...



// 18-3 Student 클래스를 상속받은 UniversityStudent 클래스
class UniversityStudent: Student {
    var major: String = ""
}

let jenny: UniversityStudent = UniversityStudent()
jenny.major = "Art"
jenny.speak()   // 가나다라마바사
jenny.study()   // Study hard...

