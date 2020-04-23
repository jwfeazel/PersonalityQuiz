//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by vagrant on 4/23/20.
//  Copyright © 2020 Joey Feazel. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct  Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case monkey = "🐵", cat = "🐱", wolf = "🐺", penguin = "🐧"
    
    var definition: String {
        switch self {
        case .monkey:
            return "You are a wild type, you enjoy going crazy with friends and having as great time"
        case .cat:
            return "You sneaky one! We all need to keep a close eye on you"
        case .wolf:
            return "You are a natural born leader, you will never be following the pack"
        case .penguin:
            return "You prefer to do things as part of a group or family, people admire you commitment to your loved ones"
        }
    }
}
