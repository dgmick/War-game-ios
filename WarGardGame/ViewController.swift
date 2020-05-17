//
//  ViewController.swift
//  WarGardGame
//
//  Created by Mickael Lutin on 16/05/2020.
//  Copyright © 2020 Mickael Lutin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        leftImageView.image = UIImage(named: "back")
        rightImageView.image = UIImage(named: "back")
    }

    @IBAction func DealTapped(_ sender: Any) {
        let leftNumer = Int.random(in: 2...14)
        let rightNumer = Int.random(in: 2...14)

        leftImageView.image = UIImage(named: "card\(leftNumer)")
        rightImageView.image = UIImage(named: "card\(rightNumer)")
        
        if leftNumer > rightNumer {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
}

