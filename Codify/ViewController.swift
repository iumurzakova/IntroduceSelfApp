//
//  ViewController.swift
//  Codify
//
//  Created by Irodakhon Umurzakova on 17/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var FirstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var schoolName: UITextField!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPets: UILabel!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func IntroduceSelf(_ sender: UIButton) {
        
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        
        let introduction = "My name is \(FirstName.text!)  \(lastName.text!)  and I attend \(schoolName.text!). I am currently in my \(year!) year and I own \(numberOfPets.text!) cat. It is \(morePetsSwitch.isOn) that I want to own more pets in the future."
        
      
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController,animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func StepperDidChange(_ sender: UIStepper) {
        numberOfPets.text = "\(Int(sender.value))"
    }
}

