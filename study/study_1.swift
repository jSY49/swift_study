//
//  study_1.swift
//  study
//
//  Created by Seungyeon Jeon on 2023/04/13.
//

import Foundation

func study_1(){
    //ex1()
    //ex2()
    ex3()
}

class Person{
    var name :String = "yeon"
    var age : Int = 10
}

//1-2. 명명범과 콘솔로그 문자열 보간법
func ex1(){
    let age:Int = 10    //let 상수
    print("hello Im \(age).")   //.  \(변수이름) 으로 값을 가져올 수 있음.
    print("first\n")
    print("====")

    let yeon :Person = Person()
    print(yeon)             //study.Person
    print("\n########\n")
    /*
     dump 결과
     ▿ study.Person #0
       - name: "yeon"
       - age: 10
     */
    dump(yeon)
}
//1-3. 상수와 변수
func ex2(){
    /*
    // 상수와 변수 선언(값의 타입이 명확하다면 타입 생략 가능)
    let 상수이름: 타입 = 값
    var 변수이름: 타입 = 값
     */
    
    let sum: Int
    let inputA: Int = 100
    let inputB: Int = 200
    sum = inputA + inputB   //이후로는 재할당 불가

    var nickName: String
    nickName = "yeon"
    nickName = "gil"
    
    print("상수 : \(sum) \n변수 : \(nickName)")
}

//1-4. 기본 데이터타입
func ex3(){
    
    //기본 데이터 타입 종류 : Bool, Int,  UInt, Float, Double, Character, String
    //다른데이터 타입 간에 교환이 까다로운 언어임
    //암시적 교환 불가
    
    var someBool = false    //0과 1은 안됨 무조건 true false로만
    print("Bool = \(someBool)")
    
    var someInt = -100
    print("Int = \(someInt)")
    
    var someUInt : UInt = 100   //양수만, 음수 오류
    print("Unsigned Int = \(someUInt)")
    
    //Float : 실수 타입. 32비트 부동소수형.
    //Double : 실수 타입. 64비트 부동소수형.
    //두 타입 간 교환 안됨
    var someFloat: Float = 3.14
    someFloat = 3   //소수점없이 대입해도 됨
    print("Float = \(someFloat)")

    var someDouble: Double = 3.14
    someDouble = 3
    print("Double = \(someDouble)")
    
    //Character : 문자 타입. 유니코드 사용. 큰따옴표("") 사용.
    //String : 문자열 타입. 유니코드 사용. 큰따옴표("") 사용.
    //두 타입간 교환안됨
    var someCharacter: Character = "🇰🇷"
    someCharacter = "😄"
    someCharacter = "가"
    someCharacter = "A"
    // someCharacter = "하하하" // 컴파일 오류발생
    print("Character = \(someCharacter)")

    var someString: String = "하하하 😄 "
    someString = someString + "웃으면 복이와요"
    someString += "!!"
    print("String = \(someString)")

}
