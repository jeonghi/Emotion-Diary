//
//  UserDefaultManager.swift
//  EmotionDiary
//
//  Created by 쩡화니 on 1/5/24.
//

import Foundation

final class UserDefaultManager {
  
  private init() {}
  
  @UserDefaultWrapper(key: Key.EMOTION.rawValue, defaultValue: Emotion.toDictionary())
  static var emotionCountingDict: [Emotion:Int]
}

extension UserDefaultManager {
  /// 키 정의
  enum Key: String {
    case EMOTION
  }
}
