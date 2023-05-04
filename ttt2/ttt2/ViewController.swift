//
//  ViewController.swift
//  ttt2
//
//  Created by mohammed alsaad on 10/11/2022.
//

import UIKit

class ViewController: UIViewController {

    var CurrentPlayer = 1 ;
    var stopTheGame = false
    var myBoard = [0,0,0,0,0,0,0,0,0]
    let WinList = [[0,1,2], [3,4,5], [6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8], [2,4,6]]
    
    @IBOutlet weak var restButton: UIButton!
    @IBOutlet var theButtons: [UIButton]!
    
    @IBOutlet weak var endGame: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPr(_ sender: UIButton) {
        
              if (myBoard[sender.tag-1]==0 && stopTheGame == false ){
                  
                  if CurrentPlayer == 1{
                      
                      sender.backgroundColor = .blue
                      myBoard[sender.tag-1] = CurrentPlayer
                      CurrentPlayer = 2
                  }else {
                      
                      sender.backgroundColor = .red
                      myBoard[sender.tag-1] =  CurrentPlayer
                      CurrentPlayer = 1
                      
                  }
              }
        for line in WinList{
                   
          if myBoard[line[0]] != 0 && myBoard[line[0]]==myBoard[line[1]] && myBoard[line[1]]==myBoard[line[2]]{
            stopTheGame = true
           if myBoard[line[0]] == 1 {
               endGame.text = "Blue is Win ! "
                           
            }else  if myBoard[line[0]] == 2 {
                endGame.text = "Red is Win ! "
                        
                       }
                       
                       
                   }
                   
               }
               
           }
            
    @IBAction func restartButton(_ sender: UIButton) {
        myBoard = [0,0,0,0,0,0,0,0,0]
                stopTheGame = false
        endGame.text = ""
                CurrentPlayer = 1
                for i in 1...9{
                    let myButton = view.viewWithTag(i) as! UIButton
                    myButton.backgroundColor = .gray
                
                }
        
    }
    
            
        }
    
    
    


