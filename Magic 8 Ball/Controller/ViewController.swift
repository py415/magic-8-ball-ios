//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Philip Yu on 6/28/19.
//  Copyright © 2019 Philip Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - Properties
    private var randomBallNumber: Int = 0
    
    private let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
        
    }
    
    // MARK: - IBAction Function

    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    // MARK: - Private Function Section
    
    private func newBallImage() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
}
