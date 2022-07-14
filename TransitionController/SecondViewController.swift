//
//  SecondViewController.swift
//  TransitionController
//
//  Created by Tecorb on 13/07/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func popController(direction:TransitioDirection){
        DispatchQueue.main.async { 
            self.navigationController?.view.layer.add(CATransition().popTransiction(direction: direction, duration: 0.8), forKey: nil)
            self.navigationController?.popViewController(animated: false)
        }
    }
    
    @IBAction func onClickLeftTansition(_ sender: UIButton){
        self.popController(direction: .left)
    }
    
    @IBAction func onClickRightTansition(_ sender: UIButton){
        self.popController(direction: .right)
    }
    
    @IBAction func onClickTopTansition(_ sender: UIButton){
        self.popController(direction: .top)
    }
    
    @IBAction func onClickBottomTansition(_ sender: UIButton){
        self.popController(direction: .bottom)
    }
}
