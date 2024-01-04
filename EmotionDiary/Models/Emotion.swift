//
//  Emotion.swift
//  EmotionDiary
//
//  Created by 쩡화니 on 1/4/24.
//

import Foundation

enum Emotion: String, CaseIterable, Codable {
  case 행복해
  case 짜릿해
  case 사랑해
  case 너무해
  case 무념해
  case 다행해
  case 당황해
  case 별로해
  case 우울해
  
  init?(_ tag: Int?) {
    switch tag {
    case 0: self = .행복해
    case 1: self = .짜릿해
    case 2: self = .사랑해
    case 3: self = .너무해
    case 4: self = .무념해
    case 5: self = .다행해
    case 6: self = .당황해
    case 7: self = .별로해
    case 8: self = .우울해
    default : return nil
    }
  }
  
  static func toDictionary() -> [Emotion: Int] {
      var dictionary = [Emotion: Int]()
      Self.allCases.forEach {
          dictionary[$0] = 0
      }
      return dictionary
  }
}
