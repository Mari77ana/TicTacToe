//
//  Menu_Controller.swift
//  TicTacToe
//
//  Created by Mariana Laic on 2023-09-12.
//

import UIKit

class Menu_Controller: UIViewController {
    
    @IBOutlet weak var btn_2Players: UIButton!
    
    let toGameBoard = "goToGameBoard" // identifier
    
    
    @IBOutlet weak var img_box: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btn_goToPlayBoard(_ sender: UIButton) {
        performSegue(withIdentifier: toGameBoard, sender: self)
        
    }
    
    
    

   
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        print("Tap Gester was called")
    }
    

}
