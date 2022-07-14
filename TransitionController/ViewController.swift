//
//  ViewController.swift
//  TransitionController
//
//  Created by Tecorb on 13/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func pushController(direction:TransitioDirection){
        let secondVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        DispatchQueue.main.async {
            self.navigationController?.view.layer.add(CATransition().pushTransiction(direction: direction, duration: 0.8), forKey: nil)
            self.navigationController?.pushViewController(secondVC!, animated: false)
        }
    }
    
    @IBAction func onClickLeftTansition(_ sender: UIButton){
        self.pushController(direction: .left)
    }
    
    @IBAction func onClickRightTansition(_ sender: UIButton){
        self.pushController(direction: .right)
    }
    
    @IBAction func onClickTopTansition(_ sender: UIButton){
        self.pushController(direction: .top)
    }
    
    @IBAction func onClickBottomTansition(_ sender: UIButton){
        self.pushController(direction: .bottom)
    }


}

