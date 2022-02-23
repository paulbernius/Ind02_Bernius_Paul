//
//  ViewController.swift
//  Ind02_Bernius_Paul(1)
//
//  Created by Paul Bernius on 2/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Declaring all outlets
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
    @IBOutlet weak var shuffleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerButton.setTitle("Show Answer", for: .normal) // SetTitles to ensure the checks done later are accurate
        shuffleButton.setTitle("Shuffle", for: .normal)
        answerButton.isEnabled = false          // Answer button remains hiden until the puzzle is shuffled
        Box1.isUserInteractionEnabled = false   // Disable user interaction when answer is displayed
        Box2.isUserInteractionEnabled = false
        Box3.isUserInteractionEnabled = false
        Box4.isUserInteractionEnabled = false
        Box5.isUserInteractionEnabled = false
        Box6.isUserInteractionEnabled = false
        Box7.isUserInteractionEnabled = false
        Box8.isUserInteractionEnabled = false
        Box9.isUserInteractionEnabled = false
        Box10.isUserInteractionEnabled = false
        Box12.isUserInteractionEnabled = false
        Box13.isUserInteractionEnabled = false
        Box14.isUserInteractionEnabled = false
        Box15.isUserInteractionEnabled = false
        Box16.isUserInteractionEnabled = false
        Box17.isUserInteractionEnabled = false
        Box18.isUserInteractionEnabled = false
        Box19.isUserInteractionEnabled = false
        Box20.isUserInteractionEnabled = false
    }
    
    @IBAction func tapHandler(_ sender: UITapGestureRecognizer) { // Handles taps on boxes
        guard let tappedImageView = sender.view as? UIImageView else {
            return
        }
        
        if !isValid(tappedImageView) {          // Calls isValid function on the tapped box
            if checkForWin() {                  // Checks for win if move was valid
                shuffleButton.isEnabled = true  // Enable shuffle button
                shuffleButton.setTitle("Win! Shuffle again?", for: .normal) // Replace shuffle button text
                answerButton.isEnabled = false  // Disable answer button since answer is already displayed
                shuffleButton.tintColor = UIColor.systemGreen // Change button color to green indicating a win
            }
            return
        }
    }
    
    var nameOfFiles = ["empty", "Mojave Picture-0-1", "Mojave Picture-0-2", "Mojave Picture-0-3", "Mojave Picture-0-4", "Mojave Picture-1-0", "Mojave Picture-1-1", "Mojave Picture-1-2", "Mojave Picture-1-3", "Mojave Picture-1-4", "Mojave Picture-2-0", "Mojave Picture-2-1", "Mojave Picture-2-2", "Mojave Picture-2-3", "Mojave Picture-2-4", "Mojave Picture-3-0", "Mojave Picture-3-1", "Mojave Picture-3-2", "Mojave Picture-3-3", "Mojave Picture-3-4"].shuffled()
    // Shuffled array to shuffle puzzle pieces
    
    var answer = ["empty", "Mojave Picture-0-1", "Mojave Picture-0-2", "Mojave Picture-0-3", "Mojave Picture-0-4", "Mojave Picture-1-0", "Mojave Picture-1-1", "Mojave Picture-1-2", "Mojave Picture-1-3", "Mojave Picture-1-4", "Mojave Picture-2-0", "Mojave Picture-2-1", "Mojave Picture-2-2", "Mojave Picture-2-3", "Mojave Picture-2-4", "Mojave Picture-3-0", "Mojave Picture-3-1", "Mojave Picture-3-2", "Mojave Picture-3-3", "Mojave Picture-3-4"]
    // Answer key
    
    @IBAction func ShuffleButtonPushed(_ sender: UIButton) { // Shuffle Button Handler
        if shuffleButton.currentTitle == "Shuffle" { // If game just started do the following
            answerButton.isEnabled = true            // Enable answer button since game has started
            Box1.image = UIImage(named: nameOfFiles[0]) // Fill ImageViews with shuffled images
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
            Box1.isUserInteractionEnabled = true // Enable user interaction on ImageViews
            Box2.isUserInteractionEnabled = true
            Box3.isUserInteractionEnabled = true
            Box4.isUserInteractionEnabled = true
            Box5.isUserInteractionEnabled = true
            Box6.isUserInteractionEnabled = true
            Box7.isUserInteractionEnabled = true
            Box8.isUserInteractionEnabled = true
            Box9.isUserInteractionEnabled = true
            Box10.isUserInteractionEnabled = true
            Box11.isUserInteractionEnabled = true
            Box12.isUserInteractionEnabled = true
            Box13.isUserInteractionEnabled = true
            Box14.isUserInteractionEnabled = true
            Box15.isUserInteractionEnabled = true
            Box16.isUserInteractionEnabled = true
            Box17.isUserInteractionEnabled = true
            Box18.isUserInteractionEnabled = true
            Box19.isUserInteractionEnabled = true
            Box20.isUserInteractionEnabled = true
            shuffleButton.isEnabled = false // Disable shuffle button since game started
        } else {
            nameOfFiles.shuffle() // If game was won & shuffle button is pressed, reshuffle cards and do assign images
            answerButton.isEnabled = true // Enable answer button since a new game has started
            Box1.image = UIImage(named: nameOfFiles[0]) // Fill ImageViews with shuffled images
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
            shuffleButton.tintColor = UIColor.systemGray // Reset shuffle button color since new game has started
            shuffleButton.setTitle("Shuffle", for: .normal) // Reset shuffle button title since new game has started
            shuffleButton.isEnabled = false // Disable shuffle button since game has started
        }
    }
    
    @IBAction func AnswerButtonPressed(_ sender: UIButton) { // Answer Button Handler
        if answerButton.currentTitle == "Show Answer" { // If button title says "Show Answer", show the answer
            Box1.image = UIImage(named: answer[0]) // Fill ImageViews with answer key
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
            Box1.isUserInteractionEnabled = false // Disable user interaction when answer is displayed
            Box2.isUserInteractionEnabled = false
            Box3.isUserInteractionEnabled = false
            Box4.isUserInteractionEnabled = false
            Box5.isUserInteractionEnabled = false
            Box6.isUserInteractionEnabled = false
            Box7.isUserInteractionEnabled = false
            Box8.isUserInteractionEnabled = false
            Box9.isUserInteractionEnabled = false
            Box10.isUserInteractionEnabled = false
            Box12.isUserInteractionEnabled = false
            Box13.isUserInteractionEnabled = false
            Box14.isUserInteractionEnabled = false
            Box15.isUserInteractionEnabled = false
            Box16.isUserInteractionEnabled = false
            Box17.isUserInteractionEnabled = false
            Box18.isUserInteractionEnabled = false
            Box19.isUserInteractionEnabled = false
            Box20.isUserInteractionEnabled = false
            answerButton.setTitle("Hide Answer", for: .normal) // Set answer button title "Hide Answer"
        } else { // If title says "Hide Answer", hide the answer and re-enable user interaction
            Box1.isUserInteractionEnabled = true
            Box2.isUserInteractionEnabled = true
            Box3.isUserInteractionEnabled = true
            Box4.isUserInteractionEnabled = true
            Box5.isUserInteractionEnabled = true
            Box6.isUserInteractionEnabled = true
            Box7.isUserInteractionEnabled = true
            Box8.isUserInteractionEnabled = true
            Box9.isUserInteractionEnabled = true
            Box10.isUserInteractionEnabled = true
            Box11.isUserInteractionEnabled = true
            Box12.isUserInteractionEnabled = true
            Box13.isUserInteractionEnabled = true
            Box14.isUserInteractionEnabled = true
            Box15.isUserInteractionEnabled = true
            Box16.isUserInteractionEnabled = true
            Box17.isUserInteractionEnabled = true
            Box18.isUserInteractionEnabled = true
            Box19.isUserInteractionEnabled = true
            Box20.isUserInteractionEnabled = true
            Box1.image = UIImage(named: nameOfFiles[0]) // Replace answer with shuffled images
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
            answerButton.setTitle("Show Answer", for: .normal) // Reset answer button title
        }
    }
    
    func isValid(_ box: UIImageView) -> Bool { // Checks for valid move
        
        /*
        Each box is checked for x and y axis using .center.x & .center.y
        If the box is within range of the passed box,
        Check if the image is a gray square,
        If so, swap
        */

        if box.center.x == 55.5 { // Checks the first row
            if box.center.y == 218.5 {
                if imageCompare(Box2) {
                    swapImage(box, Box2)
                }
                if imageCompare(Box6) {
                    swapImage(box, Box6)
                }
                if imageCompare(Box7) {
                    swapImage(box, Box7)
                }
            }
            if box.center.y == 311.5 {
                if imageCompare(Box1) {
                    swapImage(box, Box1)
                }
                if imageCompare(Box3) {
                    swapImage(box, Box3)
                }
                if imageCompare(Box6) {
                    swapImage(box, Box6)
                }
                if imageCompare(Box7) {
                    swapImage(box, Box7)
                }
                if imageCompare(Box8) {
                    swapImage(box, Box8)
                }
            }
            if box.center.y == 404.5 {
                if imageCompare(Box2) {
                    swapImage(box, Box2)
                }
                if imageCompare(Box4) {
                    swapImage(box, Box4)
                }
                if imageCompare(Box7) {
                    swapImage(box, Box7)
                }
                if imageCompare(Box8) {
                    swapImage(box, Box8)
                }
                if imageCompare(Box9) {
                    swapImage(box, Box9)
                }
            }
            if box.center.y == 497.5 {
                if imageCompare(Box3) {
                    swapImage(box, Box3)
                }
                if imageCompare(Box5) {
                    swapImage(box, Box5)
                }
                if imageCompare(Box8) {
                    swapImage(box, Box8)
                }
                if imageCompare(Box9) {
                    swapImage(box, Box9)
                }
                if imageCompare(Box10) {
                    swapImage(box, Box10)
                }
            }
            if box.center.y == 590.5 {
                if imageCompare(Box4) {
                    swapImage(box, Box4)
                }
                if imageCompare(Box9) {
                    swapImage(box, Box9)
                }
                if imageCompare(Box10) {
                    swapImage(box, Box10)
                }
            }
        }
        
        
        if box.center.x == 148.5 { // Checks the second row
            if box.center.y == 218.5 {
                if imageCompare(Box1) {
                    swapImage(box, Box1)
                }
                if imageCompare(Box2) {
                    swapImage(box, Box2)
                }
                if imageCompare(Box7) {
                    swapImage(box, Box7)
                }
                if imageCompare(Box11) {
                    swapImage(box, Box11)
                }
                if imageCompare(Box12) {
                    swapImage(box, Box12)
                }
            }
            if box.center.y == 311.5 {
                if imageCompare(Box1) {
                    swapImage(box, Box1)
                }
                if imageCompare(Box2) {
                    swapImage(box, Box2)
                }
                if imageCompare(Box3) {
                    swapImage(box, Box3)
                }
                if imageCompare(Box6) {
                    swapImage(box, Box6)
                }
                if imageCompare(Box8) {
                    swapImage(box, Box8)
                }
                if imageCompare(Box11) {
                    swapImage(box, Box11)
                }
                if imageCompare(Box12) {
                    swapImage(box, Box12)
                }
                if imageCompare(Box13) {
                    swapImage(box, Box13)
                }
            }
            if box.center.y == 404.5 {
                if imageCompare(Box2) {
                    swapImage(box, Box2)
                }
                if imageCompare(Box3) {
                    swapImage(box, Box3)
                }
                if imageCompare(Box4) {
                    swapImage(box, Box4)
                }
                if imageCompare(Box7) {
                    swapImage(box, Box7)
                }
                if imageCompare(Box9) {
                    swapImage(box, Box9)
                }
                if imageCompare(Box12) {
                    swapImage(box, Box12)
                }
                if imageCompare(Box13) {
                    swapImage(box, Box13)
                }
                if imageCompare(Box14) {
                    swapImage(box, Box14)
                }
            }
            if box.center.y == 497.5 {
                if imageCompare(Box3) {
                    swapImage(box, Box3)
                }
                if imageCompare(Box4) {
                    swapImage(box, Box4)
                }
                if imageCompare(Box5) {
                    swapImage(box, Box5)
                }
                if imageCompare(Box8) {
                    swapImage(box, Box8)
                }
                if imageCompare(Box10) {
                    swapImage(box, Box10)
                }
                if imageCompare(Box13) {
                    swapImage(box, Box13)
                }
                if imageCompare(Box14) {
                    swapImage(box, Box14)
                }
                if imageCompare(Box15) {
                    swapImage(box, Box15)
                }
            }
            if box.center.y == 590.5 {
                if imageCompare(Box4) {
                    swapImage(box, Box4)
                }
                if imageCompare(Box5) {
                    swapImage(box, Box5)
                }
                if imageCompare(Box9) {
                    swapImage(box, Box9)
                }
                if imageCompare(Box14) {
                    swapImage(box, Box14)
                }
                if imageCompare(Box15) {
                    swapImage(box, Box15)
                }
            }
        }
        
        
        if box.center.x == 241.5 { // Checks the third row
            if box.center.y == 218.5 {
                if imageCompare(Box6) {
                    swapImage(box, Box6)
                }
                if imageCompare(Box7) {
                    swapImage(box, Box7)
                }
                if imageCompare(Box12) {
                    swapImage(box, Box12)
                }
                if imageCompare(Box16) {
                    swapImage(box, Box16)
                }
                if imageCompare(Box17) {
                    swapImage(box, Box17)
                }
            }
            if box.center.y == 311.5 {
                if imageCompare(Box6) {
                    swapImage(box, Box6)
                }
                if imageCompare(Box7) {
                    swapImage(box, Box7)
                }
                if imageCompare(Box8) {
                    swapImage(box, Box8)
                }
                if imageCompare(Box11) {
                    swapImage(box, Box11)
                }
                if imageCompare(Box13) {
                    swapImage(box, Box13)
                }
                if imageCompare(Box16) {
                    swapImage(box, Box16)
                }
                if imageCompare(Box17) {
                    swapImage(box, Box17)
                }
                if imageCompare(Box18) {
                    swapImage(box, Box18)
                }
            }
            if box.center.y == 404.5 {
                if imageCompare(Box7) {
                    swapImage(box, Box7)
                }
                if imageCompare(Box8) {
                    swapImage(box, Box8)
                }
                if imageCompare(Box9) {
                    swapImage(box, Box9)
                }
                if imageCompare(Box12) {
                    swapImage(box, Box12)
                }
                if imageCompare(Box14) {
                    swapImage(box, Box14)
                }
                if imageCompare(Box17) {
                    swapImage(box, Box17)
                }
                if imageCompare(Box18) {
                    swapImage(box, Box18)
                }
                if imageCompare(Box19) {
                    swapImage(box, Box19)
                }
            }
            if box.center.y == 497.5 {
                if imageCompare(Box8) {
                    swapImage(box, Box8)
                }
                if imageCompare(Box9) {
                    swapImage(box, Box9)
                }
                if imageCompare(Box10) {
                    swapImage(box, Box10)
                }
                if imageCompare(Box13) {
                    swapImage(box, Box13)
                }
                if imageCompare(Box15) {
                    swapImage(box, Box15)
                }
                if imageCompare(Box18) {
                    swapImage(box, Box18)
                }
                if imageCompare(Box19) {
                    swapImage(box, Box19)
                }
                if imageCompare(Box20) {
                    swapImage(box, Box20)
                }
            }
            if box.center.y == 590.5 {
                if imageCompare(Box9) {
                    swapImage(box, Box9)
                }
                if imageCompare(Box10) {
                    swapImage(box, Box10)
                }
                if imageCompare(Box14) {
                    swapImage(box, Box14)
                }
                if imageCompare(Box19) {
                    swapImage(box, Box19)
                }
                if imageCompare(Box20) {
                    swapImage(box, Box20)
                }
            }
        }
        
        if box.center.x == 334.5 { // Checks the fourth row
            if box.center.y == 218.5 {
                if imageCompare(Box11) {
                    swapImage(box, Box11)
                }
                if imageCompare(Box12) {
                    swapImage(box, Box12)
                }
                if imageCompare(Box17) {
                    swapImage(box, Box17)
                }
            }
            if box.center.y == 311.5 {
                if imageCompare(Box11) {
                    swapImage(box, Box11)
                }
                if imageCompare(Box12) {
                    swapImage(box, Box12)
                }
                if imageCompare(Box13) {
                    swapImage(box, Box13)
                }
                if imageCompare(Box16) {
                    swapImage(box, Box16)
                }
                if imageCompare(Box18) {
                    swapImage(box, Box18)
                }
            }
            if box.center.y == 404.5 {
                if imageCompare(Box12) {
                    swapImage(box, Box12)
                }
                if imageCompare(Box13) {
                    swapImage(box, Box13)
                }
                if imageCompare(Box14) {
                    swapImage(box, Box14)
                }
                if imageCompare(Box17) {
                    swapImage(box, Box17)
                }
                if imageCompare(Box19) {
                    swapImage(box, Box19)
                }
            }
            if box.center.y == 497.5 {
                if imageCompare(Box13) {
                    swapImage(box, Box13)
                }
                if imageCompare(Box14) {
                    swapImage(box, Box14)
                }
                if imageCompare(Box15) {
                    swapImage(box, Box15)
                }
                if imageCompare(Box18) {
                    swapImage(box, Box18)
                }
                if imageCompare(Box20) {
                    swapImage(box, Box20)
                }
            }
            if box.center.y == 590.5 {
                if imageCompare(Box14) {
                    swapImage(box, Box14)
                }
                if imageCompare(Box15) {
                    swapImage(box, Box15)
                }
                if imageCompare(Box19) {
                    swapImage(box, Box19)
                }
            }
        }
        return false // Returns false, but is negated when used. This could be changed from 'False' to 'True' and the condition would not need to be negated.
    }
    
    func imageCompare(_ image: UIImageView) -> Bool{ // Function to compare Box images to gray image
        let emptyImage = UIImage(named: "empty") // Create image with the image "empty"
        let newImage: UIImage = image.image! // Create image from passed ImageView
        return emptyImage?.pngData() == newImage.pngData() // Return true if images are the same, false if not
    }
    
    func swapImage(_ box1: UIImageView, _ box2: UIImageView) { // Function to swap images and array indexes
        
        var box1Index: Int? = nil // Initialize index variables
        var box2Index: Int? = nil
        
        for name in nameOfFiles { // For loop to find the image within array
            let temp: UIImage = UIImage(named: name)!
            if box1.image?.pngData() == temp.pngData() { // If array index is found:
                box1Index = nameOfFiles.firstIndex(of: name)! // Assign variable 1 to the index value
            }
            if box2.image?.pngData() == temp.pngData() {
                box2Index = nameOfFiles.firstIndex(of: name)! // Assign variable 2 to the index value
            }
        }
        
        // Swap array elemtents
        let tempString = nameOfFiles[box1Index!]
        nameOfFiles[box1Index!] = nameOfFiles[box2Index!]
        nameOfFiles[box2Index!] = tempString
        
        // Swap images
        let tempImage: UIImage = box1.image!
        box1.image = box2.image
        box2.image = tempImage
    }
    
    func checkForWin() -> Bool { // Function to check for win
        var index = 0
        for name in nameOfFiles {      // Cycle through shuffled images array
            if name != answer[index] { // Once a string does not match with the answer key,
                return false           // Return false
            }
            index = index + 1         // Increase index if strings match
        }
        return true                   // If it makes it through the entire loop then a win is detected
    }
}
