//
//  ViewController.swift
//  realFan
//
//  Created by tunchabird2 on 15/11/2561 BE.
//  Copyright © 2561 tunchanok. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    
    @IBOutlet weak var counterImage: UIImageView!
    @IBOutlet weak var counterScore: UILabel!
    @IBOutlet weak var counterTimer: UILabel!
    @IBOutlet weak var counterQuestion: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    @IBOutlet weak var progressBar: UIView!
    
    let allQuestion = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer:Int = 0
    var timer = Timer()
    var limitTime = 10
    var checkStatusToPlay = false
    var Score = 0
    var audioPlayer : AVAudioPlayer!
    
    let soundFiles = ["beep1", "tele"]
    
    
    @IBOutlet weak var questionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer .scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        updateQuestion()
        updateUI()
        processTimer()
    }
    

    @objc func processTimer() {
        if limitTime > 0 {
            //ถ้าเวลายังมากกว่า 0 ก็ให้นับถอยหลัง คือลบค่าไปเรื่อยๆ
            limitTime -= 1
            counterTimer?.text = "Timer: \(limitTime)"
            
      }else if limitTime == 0{
           checkStatusToPlay = false
            //ถ้าเวลาเป็น 0 ก็ให้เปลี่ยนสถานะเป็น False เพื่อให้กดเล่นต่อไม่ได้
        }else{
            timer.invalidate()
            //นอกเหลือจากนั้น ให้หยุดเวลา
        }
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        if sender.tag == selectedAnswer{
            print("correct")
            score += 1
            ProgressHUD.showSuccess("ถูกตว้อง")
            playSound()
        }else{
            print("wrong")
            ProgressHUD.showError("ผิดแล้น")
            playSound1()
        }
        
        questionNumber += 1
        updateQuestion()
        updateUI()
        
    }
    
    func updateQuestion(){
        optionA?.layer.cornerRadius = 10
        optionB?.layer.cornerRadius = 10
        optionC?.layer.cornerRadius = 10
        optionD?.layer.cornerRadius = 10
        if questionNumber < allQuestion.list.count{
         counterImage?.image = UIImage(named:(allQuestion.list[questionNumber].questionImage))
        questionLabel?.text = allQuestion.list[questionNumber].question
        optionA?.setTitle(allQuestion.list[questionNumber].optionA, for: UIControl.State.normal)
        optionB?.setTitle(allQuestion.list[questionNumber].optionB, for: UIControl.State.normal)
        optionC?.setTitle(allQuestion.list[questionNumber].optionC, for: UIControl.State.normal)
        optionD?.setTitle(allQuestion.list[questionNumber].optionD, for: UIControl.State.normal)
        
        selectedAnswer = allQuestion.list[questionNumber].correctAnswer
        }else {
            let alert = UIAlertController(title: "End Game", message: "จบเกมแล้ว เล่นอีกครั้งดีมั้ย?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuestion()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    func updateUI(){
        limitTime = 10
        progressBar?.frame.size.width = (view.frame.size.width/10) * CGFloat(questionNumber)
        
        counterScore?.text? = "Score: \(score)"
        counterQuestion?.text? = "\(questionNumber + 1)/\(allQuestion.list.count)"
    }
    
    func restartQuestion(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    
    func playSound()  {
        let soundURL = Bundle.main.url(forResource: "tele", withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer.play()
    }
    
    func playSound1()  {
        let soundURL = Bundle.main.url(forResource: "beep1", withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer.play()
    }
    
    
}

