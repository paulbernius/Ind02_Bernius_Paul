//
//  ViewController.swift
//  Ind02_Bernius_Paul(1)
//
//  Created by Paul Bernius on 2/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    var nameOfFiles = ["Mojave Picture-0-0", "Mojave Picture-0-1", "Mojave Picture-0-2", "Mojave Picture-0-3", "Mojave Picture-0-4", "Mojave Picture-1-0", "Mojave Picture-1-1", "Mojave Picture-1-2", "Mojave Picture-1-3", "Mojave Picture-1-4", "Mojave Picture-2-0", "Mojave Picture-2-1", "Mojave Picture-2-2", "Mojave Picture-2-3", "Mojave Picture-2-4", "Mojave Picture-3-0", "Mojave Picture-3-1", "Mojave Picture-3-2", "Mojave Picture-3-3", "Mojave Picture-3-4"].shuffled()
    
    var answer = ["Mojave Picture-0-0", "Mojave Picture-0-1", "Mojave Picture-0-2", "Mojave Picture-0-3", "Mojave Picture-0-4", "Mojave Picture-1-0", "Mojave Picture-1-1", "Mojave Picture-1-2", "Mojave Picture-1-3", "Mojave Picture-1-4", "Mojave Picture-2-0", "Mojave Picture-2-1", "Mojave Picture-2-2", "Mojave Picture-2-3", "Mojave Picture-2-4", "Mojave Picture-3-0", "Mojave Picture-3-1", "Mojave Picture-3-2", "Mojave Picture-3-3", "Mojave Picture-3-4"]
    

    @IBOutlet weak var Box1: UIImageView!
    @IBOutlet weak var Box2: UIImageView!
    @IBOutlet weak var Box3: UIImageView!
    @IBOutlet weak var Box4: UIImageView!
    @IBOutlet weak var Box5: UIImageView!
    @IBOutlet weak var Box6: UIImageView!
    @IBOutlet weak var Box7: UIImageView!
    @IBOutlet weak var Box8: UIImageView!
    @IBOutlet weak var Box9: UIImageView!
    @IBOutlet weak var Box10: UIImageView!
    @IBOutlet weak var Box11: UIImageView!
    @IBOutlet weak var Box12: UIImageView!
    @IBOutlet weak var Box13: UIImageView!
    @IBOutlet weak var Box14: UIImageView!
    @IBOutlet weak var Box15: UIImageView!
    @IBOutlet weak var Box16: UIImageView!
    @IBOutlet weak var Box17: UIImageView!
    @IBOutlet weak var Box18: UIImageView!
    @IBOutlet weak var Box19: UIImageView!
    @IBOutlet weak var Box20: UIImageView!
    
    @IBOutlet weak var answerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ShuffleButtonPushed(_ sender: UIButton) {
        Box1.image = UIImage(named: nameOfFiles[0])
        Box2.image = UIImage(named: nameOfFiles[1])
        Box3.image = UIImage(named: nameOfFiles[2])
        Box4.image = UIImage(named: nameOfFiles[3])
        Box5.image = UIImage(named: nameOfFiles[4])
        Box6.image = UIImage(named: nameOfFiles[5])
        Box7.image = UIImage(named: nameOfFiles[6])
        Box8.image = UIImage(named: nameOfFiles[7])
        Box9.image = UIImage(named: nameOfFiles[8])
        Box10.image = UIImage(named: nameOfFiles[9])
        Box11.image = UIImage(named: nameOfFiles[10])
        Box12.image = UIImage(named: nameOfFiles[11])
        Box13.image = UIImage(named: nameOfFiles[12])
        Box14.image = UIImage(named: nameOfFiles[13])
        Box15.image = UIImage(named: nameOfFiles[14])
        Box16.image = UIImage(named: nameOfFiles[15])
        Box17.image = UIImage(named: nameOfFiles[16])
        Box18.image = UIImage(named: nameOfFiles[17])
        Box19.image = UIImage(named: nameOfFiles[18])
        Box20.image = UIImage(named: nameOfFiles[19])
    }
    
    @IBAction func AnswerButtonPressed(_ sender: UIButton) {
        if answerButton.currentTitle == "Show Answer" {
            Box1.image = UIImage(named: answer[0])
            Box2.image = UIImage(named: answer[1])
            Box3.image = UIImage(named: answer[2])
            Box4.image = UIImage(named: answer[3])
            Box5.image = UIImage(named: answer[4])
            Box6.image = UIImage(named: answer[5])
            Box7.image = UIImage(named: answer[6])
            Box8.image = UIImage(named: answer[7])
            Box9.image = UIImage(named: answer[8])
            Box10.image = UIImage(named: answer[9])
            Box11.image = UIImage(named: answer[10])
            Box12.image = UIImage(named: answer[11])
            Box13.image = UIImage(named: answer[12])
            Box14.image = UIImage(named: answer[13])
            Box15.image = UIImage(named: answer[14])
            Box16.image = UIImage(named: answer[15])
            Box17.image = UIImage(named: answer[16])
            Box18.image = UIImage(named: answer[17])
            Box19.image = UIImage(named: answer[18])
            Box20.image = UIImage(named: answer[19])
            answerButton.setTitle("Hide Answer", for: .normal)
        } else {
            Box1.image = UIImage(named: nameOfFiles[0])
            Box2.image = UIImage(named: nameOfFiles[1])
            Box3.image = UIImage(named: nameOfFiles[2])
            Box4.image = UIImage(named: nameOfFiles[3])
            Box5.image = UIImage(named: nameOfFiles[4])
            Box6.image = UIImage(named: nameOfFiles[5])
            Box7.image = UIImage(named: nameOfFiles[6])
            Box8.image = UIImage(named: nameOfFiles[7])
            Box9.image = UIImage(named: nameOfFiles[8])
            Box10.image = UIImage(named: nameOfFiles[9])
            Box11.image = UIImage(named: nameOfFiles[10])
            Box12.image = UIImage(named: nameOfFiles[11])
            Box13.image = UIImage(named: nameOfFiles[12])
            Box14.image = UIImage(named: nameOfFiles[13])
            Box15.image = UIImage(named: nameOfFiles[14])
            Box16.image = UIImage(named: nameOfFiles[15])
            Box17.image = UIImage(named: nameOfFiles[16])
            Box18.image = UIImage(named: nameOfFiles[17])
            Box19.image = UIImage(named: nameOfFiles[18])
            Box20.image = UIImage(named: nameOfFiles[19])
            answerButton.setTitle("Show Answer", for: .normal)
        }
    }
    
    
    @IBAction func TapHandler(_ sender: UITapGestureRecognizer) {
        Box1.image = UIImage(named: nameOfFiles[20])
    }
    

}

