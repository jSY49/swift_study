//
//  study_2.swift
//  study
//
//  Created by Seungyeon Jeon on 2023/04/21.
//

import Foundation

func study_1_2(){
//    study_1_2_ex1() //Any,AnyObject,nill
    study_1_2_ex2()
}


class SomeClass{}

func study_1_2_ex1(){
    /*
    Any - Swift의 모든 타입을 지칭하는 키워드
    AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
    nil - '없음'을 의미하는 키워드
     */
    
    //Any
    var someAny :Any = 10
    print(someAny)
    someAny = "뭐"
    print(someAny)
    someAny = 10.23
    print(someAny)
    
    //현재 someAny에 double 타입의 값이 들어가 있더라도 someAny는 더블 타입이 아닌 any타입이기 때문에 값을 할당할 수 없다.
    //명시적으로 타입을 변환해 주어야 한다.
//    let someDouble :Double = someAny
    
    
    //AnyObject
    var someObject :AnyObject = SomeClass()
    
    //nill
//    someAny = nill        //어떤 데이터 값도 들어올 수 있지만 nill은 안됨
//    someObject = nill     //어떤 클래스 타입이 들어올 수 있지만 nill은 안됨
    
    
}


func study_1_2_ex2(){
    /*
     Array - 순서가 있는 리스트 컬렉션
     Dictionary - '키'와 '값'의 쌍으로 이루어진 컬렉션
     Set - 순서가 없고, 멤버가 유일한 컬렉션
     */
    
    //Array
    print("=====Array=====")
    var integers :Array<Int> = Array<Int>() //Int형 Array
    // 위와 동일한 표현
    // var integers: Array<Int> = [Int]()
    // var integers: Array<Int> = []
    // var integers: [Int] = Array<Int>()
    // var integers: [Int] = [Int]()
    // var integers: [Int] = []
    // var integers = [Int]()
    integers.append(1)
    integers.append(10)
    integers.append(20)
    integers.append(30)
    print(integers)
    print("integer's count : \(integers.count)")
    print("integer contains 10? \(integers.contains(10))")
    print("integer contains 3? \(integers.contains(3))")
    
    integers[0]=9
    print(integers)
    integers.remove(at: 0)  //해당 인덱스 원소 삭제
    integers.removeLast()   //마지막 원소 삭제
    print(integers)
    integers.removeAll()
    print(integers)
    
    let immutableArray = [1,2,3]    //let을 사용하여 Array를 선언하면 불변  Array
    
    
    print("=====Dictionary=====")
    //Dictionary
    var anyDictionary : Dictionary<String, Any> = [String:Any]()
    // 위와 동일한 표현
    // var anyDictionary: Dictionary <String, Any> = Dictionary<String, Any>()
    // var anyDictionary: Dictionary <String, Any> = [:]
    // var anyDictionary: [String: Any] = Dictionary<String, Any>()
    // var anyDictionary: [String: Any] = [String: Any]()
    // var anyDictionary: [String: Any] = [:]
    // var anyDictionary = [String: Any]()
    anyDictionary["someKey"] = "value"
    anyDictionary["anotherKey"] = 100
    print(anyDictionary)
    anyDictionary["someKey"] = "dictionay"// value 변경 가능
    print(anyDictionary)
    
   
    anyDictionary["someKey"] = nil  //someKey에 해당하는 값을 없애주고 싶을 때 removeValue와 유사
    print(anyDictionary)
    anyDictionary.removeValue(forKey: "someKey")   //특정 키 삭제 가능
    print(anyDictionary)
    
    var emptyDictionary :[String:String] = [:]  //비어있는 Dictionary 만들기
    let initializedDictionary: [String: String] = ["name": "yagom", "gender": "male"]    //불변
//    let someValue : String = initializedDictionary["name"]    //불가. dictionary의 값이 들어 있을 지 아닐지 확신 할 수 없기 때문
    
    
    //Set
    print("=====set=====")
    
    var integerSet: Set<Int> = Set<Int>()
    // insert : 새로운 멤버 입력
    integerSet.insert(1)
    integerSet.insert(99)
    integerSet.insert(99)    // 동일한 값은 여러번 insert해도 한번만 저장
    integerSet.insert(100)

    print(integerSet)

    // contains: 멤버 포함 여부 확인
    print(integerSet.contains(1))
    print(integerSet.contains(2))

    // remove: 멤버 삭제
    integerSet.remove(99)
    integerSet.removeFirst()

    // count: 멤버 개수
    print("integerSet.count = \(integerSet.count)")

    // 2. Set의 활용
    // 멤버의 유일성이 보장되기 때문에 집합 연산에 활용하면 유용
    let setA: Set<Int> = [1, 2, 3, 4, 5]
    let setB: Set<Int> = [3, 4, 5, 6, 7]

    // 합집합
    let union: Set<Int> = setA.union(setB)
    print(union) // [2, 4, 5, 6, 7, 3, 1]

    // 합집합 오름차순 정렬
    let sortedUnion: [Int] = union.sorted()
    print(sortedUnion) // [1, 2, 3, 4, 5, 6, 7]

    // 교집합
    let intersection: Set<Int> = setA.intersection(setB)
    print(intersection) // [5, 3, 4]

    // 차집합
    let subtracting: Set<Int> = setA.subtracting(setB)
    print(subtracting) // [2, 1]

}
