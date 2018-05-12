//
//  ViewController.swift
//  animation
//
//  Created by d182_oscar_a on 12/05/18.
//  Copyright © 2018 d182_oscar_a. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var actionButon: UIButton!
    
    @IBAction func onTapBtn(_ sender: Any) {
        print("Tapping")
        UIView.animate(withDuration: 3, animations: {
            self.actionButon.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            self.actionButon.backgroundColor = UIColor.red
        }) { (success) in
            guard success else{return }
            UIView.animate(withDuration: 0.3, animations: {
                self.actionButon.transform = CGAffineTransform.identity
                self.actionButon.backgroundColor = UIColor.purple
            })
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButon.bounds = CGRect(x: actionButon.center.x, y: actionButon.center.y, width: actionButon.bounds.width / 2.0, height: actionButon.bounds.height)
        
    }



}

