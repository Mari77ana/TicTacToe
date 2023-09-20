//
//  Game.swift
//  TicTacToe
//
//  Created by Mariana Laic on 2023-09-13.
//

import Foundation


class GameBoard {
    
    let EMPTY_CELL = 0
    let NOT_FREE_CELL = 8
    
    let PLAYER_1 = 1
    let PLAYER_2 = 2
    var currentPlayer = 1
    
    var whoWanText: String = ""
    let DRAW = 5
    let CONTINUE_GAME = 9
   
    var isPlaying = true
    
    var board = [0,0,0,0,0,0,0,0,0] // Board no value/element in the beginning
    
    func checkForWinner() -> Int {
        
        // Horizontal row 1
        if board[0] != EMPTY_CELL && board[0] == board[1] && board[1] == board[2] {
           isPlaying = false
            // Här inne vet vi att någon har vunnit på den första horisontella raden.
            return board[0]
        }
        // Horizontal row 2,
        //inte är tom
        if board[3] != EMPTY_CELL && board[3] == board[4] && board[4] == board[5]{
            isPlaying = false
            return board[3]
          
        }
        // Horizontal row 3,
        if board[6] != EMPTY_CELL && board[6] == board[7] && board[7] == board[8]{
            isPlaying = false
            return board[6]
        }
        // Vertical column 1
        if board[0] != EMPTY_CELL && board[0] == board[3] && board[3] == board[6]{
           isPlaying = false
            return board[0]
        }
        // Vertical column 2
        if board[1] != EMPTY_CELL && board[1] == board[4] && board[4] == board[7]{
            isPlaying = false
            return board[1]
        }
        // Vertical column 3
        if board[2] != EMPTY_CELL && board[2] == board[5] && board[5] == board[8]{
            isPlaying = false
            return board[2]
        }
        // Diagonal left to right
        if board[0] != EMPTY_CELL && board[0] == board[4] && board[4] == board[8]{
            isPlaying = false
            return board[0]
        }
        // Diagonal right to left
        if board[2] != EMPTY_CELL && board[2] == board[4] && board[4] == board[6]{
            isPlaying = false
            return board[2]
        }
        
        return CONTINUE_GAME // if there is no winner return CONTINUE_GAME
        
    }
    
    
    func switchPlayers() {
        if currentPlayer == 1{
            currentPlayer = 2
        } else{ currentPlayer = 1}
    }
    

    func placeOnBoard(atBox: Int) -> Int {

       
        // If Playboard is emty -> play
        if board[atBox] == EMPTY_CELL && isPlaying {
            
            board[atBox] = currentPlayer // Board has value from PLAYER_1 and PLAYER_2
            print("CurrentPlayer \(currentPlayer)")
         
          
            let result = checkForWinner()
           
            print("Result from checkWinner \(result)")
            
            if result == 1{
                whoWanText = "Player 1 won "
               print("Player 1 won")
                return 1
               
            }
            else if result == 2{
                whoWanText = "Player 2 won"
                print("Player 2 won")
                return 2
            }
            else if !board.contains(EMPTY_CELL){
                whoWanText = "It´s a draw"
              print("DRAW")
                return DRAW
            }
            else {
                return CONTINUE_GAME}
            
            // if result is not ecual player1 and player2 and the board is full
            /*
            else if result != PLAYER_1 && result != PLAYER_2 && !board.contains(EMPTY_CELL){
                whoWanText = "It's a draw"
                print("DRAW")
                print(DRAW)
                return DRAW
             }
             
             */
         }
        
        return NOT_FREE_CELL
        // else return full PlayBoard
       
    }
   
    func resetGame(){
      board = [0,0,0,0,0,0,0,0,0]
      currentPlayer = 1
      isPlaying = true
        
    }
    
  
   
    
}
            
            
        
            
            
            
            
            
            
            
            
            
            
                    
            
            
            
        
    

