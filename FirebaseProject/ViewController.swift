//
//  ViewController.swift
//  FirebaseProject
//
//  Created by Muhammad Ibrahim on 28/01/2020.
//  Copyright © 2020 Muhammad Ibrahim. All rights reserved.
//

import UIKit
import SVProgressHUD
import JGProgressHUD

extension UIView{
    func rotate() {
        let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = NSNumber(value: 45 * M_PI)
        rotation.duration = 0.5
        rotation.isCumulative = false
        rotation.repeatCount = 1
        self.layer.add(rotation, forKey: "rotationAnimation")
    }
}

class ViewController: UIViewController {

    // shapes
    @IBOutlet weak var shape3: UIImageView!
    @IBOutlet weak var shape1: UIImageView!
    @IBOutlet weak var shape4: UIImageView!
    @IBOutlet weak var shape5: UIImageView!
    @IBOutlet weak var shape2: UIImageView!
    @IBOutlet weak var shape6: UIImageView!
    @IBOutlet weak var shape7: UIImageView!
    
    // constraints
    @IBOutlet weak var shape6RC: NSLayoutConstraint!
    @IBOutlet weak var shape1RC: NSLayoutConstraint!
    @IBOutlet weak var shape2RC: NSLayoutConstraint!
    @IBOutlet weak var shape3RC: NSLayoutConstraint!
    @IBOutlet weak var shape4RC: NSLayoutConstraint!
    
    @IBOutlet weak var shape5RC: NSLayoutConstraint!
    @IBOutlet weak var shape7RC: NSLayoutConstraint!
    @IBOutlet weak var shape5TC: NSLayoutConstraint!
    @IBOutlet weak var shape1TC: NSLayoutConstraint!
    @IBOutlet weak var shape2TC: NSLayoutConstraint!
    @IBOutlet weak var shape3TC: NSLayoutConstraint!
    @IBOutlet weak var shape4TC: NSLayoutConstraint!
    @IBOutlet weak var shape6TC: NSLayoutConstraint!
    @IBOutlet weak var shape7TC: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            UIView.animate(withDuration: 0.3, animations: {
                UIView.animate(withDuration: 0.3) {
                   self.shape1RC.constant = self.shape2RC.constant
                   self.shape1TC.constant = self.shape2TC.constant
                   self.view.layoutIfNeeded()
                }
            }) { success in
                UIView.animate(withDuration: 0.3, delay: 0.5,  animations:  {
                   self.shape5RC.constant = self.shape2RC.constant
                   self.shape5TC.constant = self.shape2TC.constant
                   self.view.layoutIfNeeded()
                }) { success in
                    
                    UIView.animate(withDuration: 0.3, animations:  {
                          self.shape7RC.constant = self.shape6RC.constant
                          self.shape7TC.constant = self.shape6TC.constant
                          self.view.layoutIfNeeded()
                       }) { success in
                            self.shape7.isHidden = true
                            self.view.layoutIfNeeded()
                            UIView.animate(withDuration: 0.3,   animations:  {
                                              self.shape6RC.constant = self.shape2RC.constant
                                              self.shape6TC.constant = self.shape2TC.constant
                                              self.view.layoutIfNeeded()
                                           }) { success in
                                            
                                            UIView.animate(withDuration: 0.3,   animations:  {
                                                             self.shape4RC.constant = self.shape3RC.constant
                                                             self.shape4TC.constant = self.shape3TC.constant
                                                             self.view.layoutIfNeeded()
                                                          }) { success in
                                                           self.shape4.isHidden = true
                                                           self.view.layoutIfNeeded()
                                                           UIView.animate(withDuration: 0.3,   animations:  {
                                                                   self.shape3RC.constant = self.shape2RC.constant
                                                                   self.shape3TC.constant = self.shape2TC.constant
                                                                   self.view.layoutIfNeeded()
                                                                }) { success in
                                                                     self.shape1.isHidden = true
                                                                     self.shape3.isHidden = true
                                                                     self.shape4.isHidden = true
                                                                     self.shape5.isHidden = true
                                                                     self.shape6.isHidden = true
                                                                     self.shape7.isHidden = true
                                                                     self.view.layoutIfNeeded()
                                                                    self.setScaleAnimation()
                                                             }
                                                           
                                                           
                                           }
                                            
                                            
                            }
                       }
                }
            }
            
        }
       
//        hud.dismiss(afterDelay: 3.0)        // Do any additional setup after loading the view.
    }

    func setScaleAnimation() {
        let angle: CGFloat =  .pi / 4

        
        UIView.animate(withDuration: 0.5, animations: {
               self.shape2.transform = CGAffineTransform(scaleX: 4, y: 4)
               self.shape2.transform = CGAffineTransform(rotationAngle: angle)

           }) { success in
            self.shape2.layoutIfNeeded()
            self.view.layoutIfNeeded()

           }
        
        
    }
    
    
    
    
}

