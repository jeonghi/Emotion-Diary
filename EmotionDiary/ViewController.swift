//
//  ViewController.swift
//  EmotionDiary
//
//  Created by 쩡화니 on 1/2/24.
//

import UIKit

class ViewController: UIViewController {
  
  var emotionCountingDict: [Emotion:Int] = UserDefaultManager.emotionCountingDict
  
  @IBOutlet var emotionLabels: [UILabel]!
  @IBOutlet var emotionImageViews: [UIImageView]!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateLabels()
  }
  
  @IBAction func tappedImageView(_ sender: UITapGestureRecognizer) {
    
    let currTag = sender.view?.tag
    
    guard let currEmotion = Emotion(currTag) else {
      return
    }
    
    emotionCountingDict[currEmotion]! += 1
    emotionLabels.filter{$0.tag == currTag}.forEach {
      updateLabel($0)
    }
    
    saveData()
  }
  
  func updateLabel(_ uiLabel: UILabel){
    guard let currEmotion: Emotion = Emotion(uiLabel.tag) else {
      return
    }
    
    if (emotionCountingDict[currEmotion] != nil) {
      uiLabel.text = "\(currEmotion.rawValue) \(emotionCountingDict[currEmotion]!)"
    }
  }
  
  func updateLabels(){
    emotionLabels.forEach {
      updateLabel($0)
    }
  }
  
  func saveData(){
    UserDefaultManager.emotionCountingDict = emotionCountingDict
  }
}

