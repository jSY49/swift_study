//
//  study_4.swift
//  study
//
//  Created by Seungyeon Jeon on 2023/10/17.
//

import Foundation

func study_4(){
    _array()
    _dictionary()
    _set()
}

func _array(){
    //array
    //순서 있음

    let yoo = "유재석"
    let ji = "지석진"
    let ha = "하하"
    let so = "전소민"
    let song = "송지효"
    let kim = "김종국"


    let runningMans = [yoo, ji, ha, so, song, kim]

    print(runningMans[0]) // -> 유재석
    print(runningMans[1]) // -> 지석진
    print(runningMans[5]) // -> 김종국

    // 비어 있는 배열 초기화
    var emptyArr: [Int] = []    //빈 배열 초기화 방법1
    emptyArr = [Int]()  //빈 배열 초기화 방법2

}

func _dictionary(){
    
    // Dictionary (Key: Value)
    //순서x, 키로 접근
    let languageCode = [    //let languageCode : [Stirng:String]
        "한국" : "ko",
        "미국" : "en",
        "일본" : "ja",
    ]

    print(languageCode["한국"]) // "ko"
    print(languageCode["베트남"]) // nil

    // 비어 있는 딕셔너리 초기화
    var emptyDic: [String: Any] = [:] // [String: Any]()로도 표현

}

func _set(){
    
    //Set
    //순서 상관없이(랜덤임), 중복없이
    var primes: Set<Int> = [2, 3, 5, 7] //타입 지정 안하면 array로 지정됨
    print(primes)
    
    // 중복 데이터 넣으려고 시도하면, 중복된것 알아서 무시됨
    var evens = Set<Int>([2, 4, 6, 8, 2, 4])
    print(evens)
    
    // 비어 있는 set 초기화
    var emptySet: Set<Int> = [] // Set<Int>()로도 표현
}
