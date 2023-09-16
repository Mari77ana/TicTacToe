//
//  ViewController.swift
//  TicTacToe
//
//  Created by Mariana Laic on 2023-09-07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var img_boxes: [UIImageView]!
    
    
    @IBOutlet weak var lbl_txtPlayer: UILabel!
    
    let gameboard = GameBoard()
    
    
    //let imgBox = [0,0,0,0,0,0,0,0] 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
     
    @IBAction func onTapBox(_ sender: UITapGestureRecognizer) {
       print("Hello") // printas inte ut
        guard let tappedImageView = sender.view as? UIImageView else {  return }
      
        guard let tag = sender.view?.tag else{
                return
            }
       let index = tag - 1
      
        
        
        let playing = gameboard.placeOnBoard(atBox: index)
        
        if playing == gameboard.NOT_FREE_CELL{
            return
        }
        
        if gameboard.currentPlayer == gameboard.PLAYER_1 {
            tappedImageView.image = UIImage(named:"android_icon")
            
        }else if gameboard.currentPlayer == gameboard.PLAYER_2{
            tappedImageView.image = UIImage(named: "apple_icon"  )
            
        }
        
        let  playerResult = gameboard.checkForWinner()
        if playerResult == gameboard.PLAYER_1{
            print("Player 1 won")
        }
        
       
         
        
       
        
        
       // if gameboard.PLAYER_1 ==
        
        
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

