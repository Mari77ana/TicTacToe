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
        
        // OutOfBounds, that's why -1
        // let index = tag - 1
        
        let result = gameboard.placeOnBoard(atBox: tag)
        

        
        //
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
            
        // When the game is on , switch players, win or draw
        case gameboard.CONTINUE_GAME:

            gameboard.switchPlayers()
            break
            
        case gameboard.DRAW:
            lbl_txtWinner.text = gameboard.whoWanText
            btn_reset.isEnabled = true
            break
            
        case gameboard.PLAYER_1:
            lbl_txtWinner.text = gameboard.whoWanText
            btn_reset.isEnabled = true
            
        case gameboard.PLAYER_2:
            lbl_txtWinner.text = gameboard.whoWanText
            btn_reset.isEnabled = true
        
            default:
                break
           
    }
        
        
        
        /*
        print("vad är currentplayer:\(gameboard.currentPlayer), vad är Player1: \(gameboard.PLAYER_1)")
        let currentPlayer = gameboard.currentPlayer
        
        tappedImageView.image = UIImage(named: "apple_icon")
        tappedImageView.image = UIImage(named: "android_icon")
        
        let players = currentPlayer == gameboard.PLAYER_1 ? "apple_icon" : "android_icon"
     
//        if gameboard.currentPlayer == gameboard.PLAYER_1{
//            print("Om currentPlayer = Player1= \(gameboard.currentPlayer) = \(gameboard.PLAYER_1)(gameboard.currentPlayer),  sätter texten 1 och Äpplet")
//            lbl_txtPlayersTurn.text = "Player 1"
//            tappedImageView.image = UIImage(named: "apple_icon" )
//        }
//        else if gameboard.currentPlayer == gameboard.PLAYER_2   {
//            lbl_txtPlayersTurn.text = "Player 2"
                                        //            tappedImageView.image = UIImage(named: "android_icon" lbl_txtPlayersTurn.text = "Player 2"
                                        //            tappedImageView.image = UIImage(named: "android_icon")
//        }
       */
        

          
            
            
            
            
            
//        case gameboard.NOT_FREE_CELL:
//            // Uppdatera dina vykomponenter utifrån detta, Show text Player1 & Player2
//
//            if gameboard.currentPlayer == gameboard.PLAYER_1 {
//                lbl_txtWinner.text = gameboard.whoWanText
//
//            }else if gameboard.currentPlayer == gameboard.PLAYER_2 {
//                lbl_txtWinner.text = gameboard.whoWanText
//
//            }
//            break
//
//
//        case gameboard.PLAYER_1:
//                print("android_icon")
//            lbl_txtWinner.text = gameboard.whoWanText
//            btn_reset.isEnabled = true
//            break
//
//        case gameboard.DRAW:
//            // Uppdatera
//            lbl_txtWinner.text = gameboard.whoWanText
//            btn_reset.isEnabled = true
//            break
//
       
        
        
        /*
        if result == gameboard.NOT_FREE_CELL{
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
        
        let  playerResult = gameboard.checkForWinner()
        
        if playerResult == gameboard.PLAYER_1 || playerResult == gameboard.PLAYER_2 {
            lbl_txtWinner.text = gameboard.whoWanText   // get the winner text
            btn_reset.isEnabled = true
        }
        else if playerResult == gameboard.DRAW {
            lbl_txtWinner.text = gameboard.whoWanText // get draw
            btn_reset.isEnabled = true
        }
         */
        
    }
    
    @IBAction func btn_resetGame(_ sender: UIButton) {
        // Game starts again by reset it
        print("Action Reset")
        gameboard.resetGame()
        btn_reset.isEnabled = false
        lbl_txtWinner.text = ""
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

