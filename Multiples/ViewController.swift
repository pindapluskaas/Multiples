//
//  ViewController.swift
//  Multiples
//
//  Created by Anthony Wedding on 30-04-16.
//  Copyright © 2016 anthonywedding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    let maxAmount = 100
    var multipleAmount = 0
    var currentAmount = 0
    var outcomeAmount = 0
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var whatMultipleBy: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var multipleLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    
    @IBAction func onAddBtnPressed(sender: UIButton) {
        
        calculateAmount()
        multipleLbl.text = "\(currentAmount) + \(multipleAmount) = \(outcomeAmount)"
        isGameOver()
    }
    
    
    @IBAction func onPlayBtnPressed(sender: UIButton) {
        
        if whatMultipleBy.text != nil && whatMultipleBy.text != "" {
            
            logo.hidden = true
            whatMultipleBy.hidden = true
            playBtn.hidden = true
            
            multipleLbl.hidden = false
            addBtn.hidden = false
            
            multipleAmount = Int(whatMultipleBy.text!)!
        }
    }
    
    
    //Functions
    func calculateAmount() {
        
        currentAmount += 5
        outcomeAmount = currentAmount + multipleAmount
    }
    
    func isGameOver() {
        
        if outcomeAmount >= maxAmount {
            restartGame()
        }
    }
    
    func restartGame() {
        
        multipleAmount = 0
        currentAmount = 0
        outcomeAmount = 0
        
        multipleLbl.text = "Press Add to Add!"
        
        logo.hidden = false
        whatMultipleBy.hidden = false
        playBtn.hidden = false
        
        multipleLbl.hidden = true
        addBtn.hidden = true
    }

}

