//
//  study_3.swift
//  study
//
//  Created by Seungyeon Jeon on 2023/07/21.
//

import Foundation

func study_facam_1(){
    tuple()
    _enum()
    
}

private func tuple(){
    //여러 데이터를 하나의 값으로 표현
    print("#####\(#function)")
    var phone = (os: "IOS", model: "iphone10")
    print("\(phone.0) = \(phone.os)")
    
    var people = ("gil","yeon")
    print(people.0)


    
}

private func _enum(){
    //서로 관계있는 것들을 모아서 표현
    print("#####\(#function)")
    
    enum Weekday{
        case Mon
        case Tue
        case Wed
        case Thur
        case Fri
        case Sat
        case Sun
    }
    
    var today : Weekday = .Mon
    var tomorrow : Weekday = Weekday.Tue
    var tomorrow2 = Weekday.Wed
    print(today)
    
    enum MediaType{
        case audio(String)
        case video(String)
    }
    
    var mp3 = MediaType.audio("mp3")
    print(mp3)
    
    
    //enum을 표시할 때 value를 표시해야 할 때도 있음
    /*
     - Int 타입의 경우, 위의 케이스 부터 0부터 시작
     - String 의 경우, case 이름을 따르거나, 새로 지정할수 있음
     */
    enum MasterLevel: Int {
        case beginner
        case intermediate
        case professional
    }

    let pro = MasterLevel(rawValue: 2)
    let otherLevel = MasterLevel(rawValue: 5) // -> nil

    print("pro :\(pro)")
    print("otherLevel :\(otherLevel)")
    
    enum Direction: String {
        case up
        case down = "ddd"
    }

    let up = Direction(rawValue: "up")
    let otherDirection = Direction(rawValue: "left") // -> nil
    
    print("up :\(up)")
    print("down :\(otherDirection)")
    
}
