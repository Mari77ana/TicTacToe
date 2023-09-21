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
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
        //Shoes that PLAYER_1 beginns
       // gameboard.currentPlayer = gameboard.PLAYER_1
      //  lbl_txtPlayersTurn.text = "Player 1"
        // Is hidden from start
        btn_reset.isEnabled = false
        
    }
    
    
    @IBAction func onTapBox(_ sender: UITapGestureRecognizer) {
        
        print("Hello")
        guard let tappedImageView = sender.view as? UIImageView else {  return }
        
        let tag = tappedImageView.tag
        
        print("My tag \(tag)") // tag is visible when pressed
        
       
        let result = gameboard.placeOnBoard(atBox: tag)
        

        // If board is free -> set icons to players 
        if result != gameboard.NOT_FREE_CELL {
            if gameboard.currentPlayer == 1 {
                
                lbl_txtPlayersTurn.text = "Player 1"
                tappedImageView.image = UIImage(named: "apple_icon")
            }else{
                lbl_txtPlayersTurn.text = "Player 2"
                tappedImageView.image = UIImage(named: "android_icon")}
        }
        
        
        switch result {
        case gameboard.NOT_FREE_CELL:
           break
            
        // When the game is on , switch players, call winners or draw
        case gameboard.CONTINUE_GAME:
             gameboard.switchPlayers()
            break
            
        case gameboard.DRAW:
            gameboard.isPlaying = false
            lbl_txtWinner.text = gameboard.whoWanText
            btn_reset.isEnabled = true
           break
            
        case gameboard.PLAYER_1:
            gameboard.isPlaying = false
            lbl_txtWinner.text = gameboard.whoWanText
            btn_reset.isEnabled = true
            break
            
        case gameboard.PLAYER_2:
            gameboard.isPlaying = false
            lbl_txtWinner.text = gameboard.whoWanText
            btn_reset.isEnabled = true
        
            default:
                break
           
    }
    
        
        
    }
    
    
    // Button reset the game, icons and text to play again
    @IBAction func btn_resetGame(_ sender: UIButton) {
        
        gameboard.resetGame()
        resetIconsAndText()
       
    }
    
    
    
    
    func resetIconsAndText(){
        
        lbl_txtWinner.text = ""
        lbl_txtPlayersTurn.text = ""
        btn_reset.isEnabled = false
        
        for eachIcon in img_boxes{
            eachIcon.image = nil
            print("Reseted: emty playboard ")
        }
        
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

