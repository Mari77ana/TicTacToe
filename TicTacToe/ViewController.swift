//
//  ViewController.swift
//  TicTacToe
//
//  Created by Mariana Laic on 2023-09-07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var img_boxes: [UIImageView]!
    
    
   
    let gameboard = GameBoard()
    
    //let imgBox = [0,0,0,0,0,0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
     
    @IBAction func onTapBox(_ sender: UITapGestureRecognizer) {
        
        // Hämta taggen
        
        // Kalla på din Game klass och försök placera på boxen
        
        // Beroende på om du lyckades placera i tidigare steg, så kan du uppdatera den berörda ImageViewn.
        
    }
    
    
    /*
    // Kolla min gesture
    @IBAction func onTapGest(_ sender: UITapGestureRecognizer) {
       // if let myImgBox = sender.view as? UIImageView{} // Kollar att detta är UIImageView
        
        guard let tag = sender.view?.tag else{return}
     
        if  gameboard.board[tag] == 0 {
            gameboard.board[tag] = 1
            
        }
        
       
    }
    
    @IBAction func TapGester(_ sender: UITapGestureRecognizer) {
        print("tapped")
        
        guard let tag = sender.view?.tag else{return} // taggar på plattorna
        
        
        print("\(tag)")
    }
     
     */
    
    
   
    
    
    
}

