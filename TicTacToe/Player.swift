//
//  Player.swift
//  TicTacToe
//
//  Created by Mariana Laic on 2023-09-13.
//

import Foundation

class Player {
    
    let PLAYER_1 = 1
    let PLAYER_2 = 2
    var currentPlayer = 1
    
    
    
    
    func switchPlayer(){
        if currentPlayer == PLAYER_1{
           currentPlayer = PLAYER_2
        } else{
            currentPlayer = 1
        }
            
    }
    
    
    
    
    
    
    
    
}
