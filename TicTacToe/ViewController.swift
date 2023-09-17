//
//  ViewController.swift
//  TicTacToe
//
//  Created by Mariana Laic on 2023-09-07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var img_boxes: [UIImageView]!
    
    @IBOutlet weak var lbl_txtPlayersTurn: UILabel!
    
    @IBOutlet weak var lbl_txtTurn: UILabel!
    
    @IBOutlet weak var btn_reset: UIButton!
    
    @IBOutlet weak var lbl_txtWinner: UILabel!
    
    let gameboard = GameBoard()
    
    
    //let imgBox = [0,0,0,0,0,0,0,0] 
    
    override func viewDidLoad() {
       super.viewDidLoad()
        lbl_txtPlayersTurn.text = "Player 1" // Shos that PLAYER_1 beginns
        btn_reset.isEnabled = false // Button is hidden from start
        
        
        // Do any additional setup after loading the view.
    }
    
     
    @IBAction func onTapBox(_ sender: UITapGestureRecognizer) {
        
       print("Hello")
        guard let tappedImageView = sender.view as? UIImageView else {  return }
      
        guard let tag = sender.view?.tag else{ // Get Tag thru sender, Int?, use guard
          return}
        print("My tag \(tag)") // tag is visible when pressing
       
        // OutOfBounds, that's why -1
      // let index = tag - 1
      
        let playing = gameboard.placeOnBoard(atBox: tag)
    
        if playing == gameboard.NOT_FREE_CELL{
            return
        }
        if gameboard.currentPlayer == gameboard.PLAYER_1 {
            lbl_txtPlayersTurn.text = "Player 1"
          tappedImageView.image = UIImage(named:"android_icon")
           
        }
        else if gameboard.currentPlayer == gameboard.PLAYER_2 {
            lbl_txtPlayersTurn.text = "Player 2"
            tappedImageView.image = UIImage(named: "apple_icon")
        }
        else{lbl_txtPlayersTurn.text = ""}
        
        let  playerResult = gameboard.checkForWinner()
        
        if playerResult == gameboard.PLAYER_1 || playerResult == gameboard.PLAYER_2{
            btn_reset.isEnabled = true
        }
        
        
        
        
        
        
        
        
        
     /*
        if playerResult == gameboard.PLAYER_1{
            print("Player 1 Android won")
        }
        else if playerResult == gameboard.PLAYER_2 {
            print("Player 2 apple won ")
        }
        else if  playerResult == gameboard.DRAW {
            print("Spelet är oavgjort")
        }
      */
       
     
        
       
         
        
       
        
        
       // if gameboard.PLAYER_1 ==
        
        
        // Hämta taggen
        
        // Kalla på din Game klass och försök placera på boxen
        
        // Beroende på om du lyckades placera i tidigare steg, så kan du uppdatera den berörda ImageViewn.
        
    }
    
    @IBAction func btn_resetGame(_ sender: UIButton) {
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

