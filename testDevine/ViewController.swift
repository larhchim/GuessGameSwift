//
//  ViewController.swift
//  testDevine
//
//  Created by LARHCHIM ISMAIL on 4/19/21.
//  Copyright © 2021 LARHCHIM ISMAIL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nbr = 0
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
         nbr = Int(arc4random_uniform(10))
    }


    @IBOutlet weak var textField:UITextField!
    
    @IBOutlet weak var Label: UILabel!
    
    
    @IBAction func Jeux(_ sender: Any) {
        
        
        if textField.text == "" {
            Label.text = "vous n'avez rien entrer"
            return
        }
        
         guard let no2 = Int(textField.text!) else {
                 Label.text = "vous avez entrer un string"
                 return
         }
             
      
        
        if(no2 == nbr){
            count = count + 1
            let alert = UIAlertController(title: "Message de felicitations", message: "bravo vous arrivez a découvrir le chiffre aprés \(count) fois", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
            present(alert,animated: true,completion: nil)
            nbr = Int(arc4random_uniform(10))
            count = 0
            textField.text = ""
            Label.text = "score"
        }
        else if(no2 > nbr){
            Label.text = "plus petit"
            count = count + 1
        }else {
            Label.text = "plus grand"
            count = count + 1
        }
    
        
    }
}

