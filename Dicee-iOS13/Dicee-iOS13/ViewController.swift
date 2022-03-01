//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Mohammad Abdur Rahman on 01/03/2022.
//

import UIKit

class ViewController: UIViewController {

    // IB (Interface Builder/Main storyboard) element allows me to reference UI elements
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        print("Button got tapped.")
        
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
        
        diceImageView1.image = diceArray.randomElement()
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
    }
    
}

