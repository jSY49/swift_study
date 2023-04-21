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
    
}
