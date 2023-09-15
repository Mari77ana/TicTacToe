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
    var currentPlayer = 4
    
    var result = 7
    var DRAW = 5
    let CONTINUE_GAME = 9
   
    
    var board = [0,0,0,0,0,0,0,0,0]
    
    func checkForWinner() -> Int {
        
        // Horizontal row 1
        if board[0] != EMPTY_CELL && board[0] == board[1] && board[1] == board[2] {
            
            // Här inne vet vi att någon har vunnit på den första horisontella raden.
            return board[0]
        }
        // Horizontal row 2,
        //inte är tom
        if board[3] != EMPTY_CELL && board[3] == board[4] && board[4] == board[5]{
            return board[3]
        }
        // Horizontal row 3,
        if board[6] != EMPTY_CELL && board[6] == board[7] && board[7] == board[8]{
            return board[6]
        }
        // Vertical column 1
        if board[0] != EMPTY_CELL && board[0] == board[3] && board[3] == board[6]{
            return board[0]
        }
        // Vertical column 2
        if board[1] != EMPTY_CELL && board[1] == board[4] && board[4] == board[7]{
            return board[1]
        }
        // Vertical column 3
        if board[2] != EMPTY_CELL && board[2] == board[5] && board[5] == board[8]{
            return board[2]
        }
        // Diagonal left to right
        if board[0] != EMPTY_CELL && board[0] == board[4] && board[4] == board[8]{
            return board[0]
        }
        // Diagonal right to left
        if board[2] != EMPTY_CELL && board[2] == board[4] && board[4] == board[6]{
            return board[2]
        }
        
        return CONTINUE_GAME
        
        }
   
    
    func switchPlayers() {
        if currentPlayer == PLAYER_1 {
            currentPlayer = PLAYER_2
        } else{ currentPlayer = PLAYER_1 }
    }
    
    /*
     
     BUSY_CELL = 8
     PLAYER_1 (Innebär att player 1 har vunnit, och spelet är avslutat)
     PLAYER_2 (INNebär att player 2 osv osv)
     CONTINUE_GAME
     DRAW = 5
     
     */
    
    func placeOnBoard(atBox: Int) -> Int {
        
        if board[atBox] == EMPTY_CELL {
            board[atBox] = currentPlayer
            switchPlayers()
            result = checkForWinner()
            
            
            if result == PLAYER_1 || result == PLAYER_2 {
                return result
                
            }else if result == DRAW {
                return DRAW
                
            }
            else { return CONTINUE_GAME }
            
            
        }else{return NOT_FREE_CELL}
        
        
        
        
        
        
        
        
        
        
        //let GAMEOVER = result != CONTINUE_GAME
        
        //result != CONTINUE_GAME
        // Avsluta spelet
        
        
        
        
        
        
        
        /*
         // Om rutan inte är tom, så avslutar vi funktionen  här
         if board[atBox] != EMPTY_CELL {
         return 8
         }
         */
        
        // Sätt nuvarande spelares värde i rutan
        //board[atBox] = currentPlayer
        
        
        
        
        // Kolla om elementet är tom, annars returnera false
        
        // Uppdatera värdet på elementet till nuvarande spelares siffra
        
        // Kolla om någon har vunnit, om så ska du avsluta spelet och annonsera vinnaren!
        
        //        let result = checkForWinner()
        //
        //        if result == PLAYER_1 {
        //            // Player 1 har vunnit
        //
        //            // Stoppa spelet och annonsera vinnaren
        //        } else if result == PLAYER_2 {
        //
        //
        //        }
        
        
        // Switcha spelares turn
        
        
        
    }
}
