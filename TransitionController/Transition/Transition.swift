//
//  File.swift
//  TransitionController
//
//  Created by Tecorb on 13/07/22.
//

import UIKit

extension CATransition {
    
    func pushTransiction(direction:TransitioDirection? = .left, duration:CGFloat = 0.5) -> CATransition{
        self.duration = duration 
        self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.type = CATransitionType.moveIn
        switch direction {
        case .left:
            self.subtype = CATransitionSubtype.fromLeft
        case .right:
            self.subtype = CATransitionSubtype.fromRight
        case .top:
            self.subtype = CATransitionSubtype.fromTop
        case .bottom:
            self.subtype = CATransitionSubtype.fromBottom
        default:
            self.subtype = CATransitionSubtype.fromLeft
        }
        return self
    }
    
    
    func popTransiction(direction:TransitioDirection? = .left, duration:CGFloat = 0.5) -> CATransition{
        self.duration = duration
        self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.type = CATransitionType.reveal
        switch direction {
        case .left:
            self.subtype = CATransitionSubtype.fromLeft
        case .right:
            self.subtype = CATransitionSubtype.fromRight
        case .top:
            self.subtype = CATransitionSubtype.fromTop
        case .bottom:
            self.subtype = CATransitionSubtype.fromBottom
        default:
            self.subtype = CATransitionSubtype.fromLeft
        }
        return self
    }
    

}


enum TransitioDirection{
    case left, right, top , bottom
}
