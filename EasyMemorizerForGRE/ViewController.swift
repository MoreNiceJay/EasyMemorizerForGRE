//
//  ViewController.swift
//  EasyMemorizerForGRE
//
//  Created by Lee Janghyup on 4/6/16.
//  Copyright © 2016 Lee Janghyup. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var vocabImage: UIImageView!
    @IBOutlet weak var meaningLabel: UILabel!
    @IBOutlet weak var vocabLabel: UILabel!
    
    var vocabData = [String]()
    var meaningData = [String]()
    
    var dayVocabNumber = 0
    var speed : Double = 1.6
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myAlert = UIAlertController(title: "Part1", message: "Try to memorize words", preferredStyle: UIAlertControllerStyle.Alert)
        var myAlertAction = UIAlertAction(title: "Start", style: UIAlertActionStyle.Default, handler: { Void in
            self.firstTimer()
        })
        myAlert.addAction(myAlertAction)
        presentViewController(myAlert, animated: true, completion:nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    func firstTimer() {
        
        
        if dayVocabNumber == vocabData.count && speed == 1.6{
            speed = 1.2
            dayVocabNumber = 0
            firstTimer()
            
        }else if dayVocabNumber == vocabData.count && speed == 1.2{
            
            dayVocabNumber = 0
            speed = 1.6
            startBackwards()
            
            
        }else {
            vocabLabel.text = vocabData[dayVocabNumber]
            vocabImage.hidden = true
            meaningLabel.text = ""
            
            
            //소리
            
            let myFilePathString = NSBundle.mainBundle().pathForResource(vocabData[dayVocabNumber], ofType: "mp3")
            var myFilePathURL = NSURL(fileURLWithPath: myFilePathString! )
            
            do {
                try audioPlayer = AVAudioPlayer(contentsOfURL: myFilePathURL)
                audioPlayer.play()
                
            }catch{
                print("error")
            }
            
            
            var timer = NSTimer.scheduledTimerWithTimeInterval(speed, target: self, selector: "pic", userInfo: nil, repeats: false)
        }
    }
    
    
    
    func pic() {
        vocabImage.hidden = false
        
        vocabImage.image = UIImage(named: vocabData[dayVocabNumber])
        var timerTwo = NSTimer.scheduledTimerWithTimeInterval(speed, target: self, selector: "descriptionWord", userInfo: nil, repeats: false)
    }
    
    func descriptionWord(){
        
        meaningLabel.text = meaningData[dayVocabNumber]
        ++dayVocabNumber
        
        var timerTree = NSTimer.scheduledTimerWithTimeInterval(speed, target: self, selector: "firstTimer", userInfo: nil, repeats: false)
        
    }
    
    
    
    
    
    func startBackwards(){
        
        if dayVocabNumber == vocabData.count && speed == 1.6{
            speed = 1.2
            dayVocabNumber = 0
            startBackwards()
            
        }else if dayVocabNumber == vocabData.count && speed == 1.2{
            
            dayVocabNumber = 0
           // lastTest()
            
            
        }else  {
            
            
            if dayVocabNumber == 0 && speed == 1.6{
                
                var myAlert = UIAlertController(title: "Part2", message: "Try to remember words", preferredStyle: UIAlertControllerStyle.Alert)
                var myAlertAction = UIAlertAction(title: "Start", style: UIAlertActionStyle.Default, handler: { Void in
                    self.meaningLabel.text = self.meaningData[self.dayVocabNumber]
                    self.vocabImage.hidden = true
                    self.vocabLabel.text = ""
                    
                    var timer = NSTimer.scheduledTimerWithTimeInterval(self.speed, target: self, selector: "reversePic", userInfo: nil, repeats: false)
                    
                })
                myAlert.addAction(myAlertAction)
                presentViewController(myAlert, animated: true, completion:nil)
            }else{
                self.meaningLabel.text = self.meaningData[self.dayVocabNumber]
                self.vocabImage.hidden = true
                self.vocabLabel.text = ""
                
                var timer = NSTimer.scheduledTimerWithTimeInterval(self.speed, target: self, selector: "reversePic", userInfo: nil, repeats: false)
                
                
                
            }
            
            
            
        }
        
    }
    
    func reversePic(){
        vocabImage.hidden = false
        
        vocabImage.image = UIImage(named: vocabData[dayVocabNumber])
        var timerTwo = NSTimer.scheduledTimerWithTimeInterval(speed, target: self, selector: "reverseWord", userInfo: nil, repeats: false)
    }
    
    func reverseWord(){
        vocabLabel.text = vocabData[dayVocabNumber]
        
        //소리
        
        let myFilePathString = NSBundle.mainBundle().pathForResource(vocabData[dayVocabNumber], ofType: "mp3")
        var myFilePathURL = NSURL(fileURLWithPath: myFilePathString! )
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: myFilePathURL)
            audioPlayer.play()
            
        }catch{
            print("error")
        }
        
        ++dayVocabNumber
        var timerTree = NSTimer.scheduledTimerWithTimeInterval(speed, target: self, selector: "startBackwards", userInfo: nil, repeats: false)
        
    }
    
    
    
//    func lastTest(){
//        wordLabel.hidden = true
//        meaningLabel.hidden = true
//        pictureImage.hidden = true
//        testButton.hidden = false
//        print("over")
//    }
//    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        var destViewController : TestVC = segue.destinationViewController as! TestVC
//        destViewController.day1word = day1word
//        destViewController.day1Meaning = day1Meaning
//    }
}

