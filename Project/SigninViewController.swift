//
//  SigninViewController.swift
//  Project
//
//  Created by Admin on 10/1/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase







class SigninViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    
    
    
    @IBOutlet var Email: UITextField!
    
    @IBOutlet var Pass: UITextField!
    
    
    
    
    
    @IBAction func SignInBtnAction(_ sender: UIButton) {
        
        handlRefresh()
        
        
    }
    func handlRefresh() {
        // let msg = messageBox.show("Error" , MyVC: self)
        guard let email = Email.text, !email.isEmpty else {return }
        guard let password = Pass.text, !password.isEmpty else {return }
        print("ABCD")
        API.logIn(Email: email, Password: password) { (error:Error?, success:Bool?) in
            print("abcd")
            
            self.pushToAnotherController()
            
        }
    }
    func pushToAnotherController() {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        present(vc, animated: false , completion: nil )
    }
    
    // Social Sharing Button
    
    
    @IBAction func facebookBtn(_ sender: Any) {
        
        let ActivityVC = UIActivityViewController(activityItems: ["www.Facebook.com"], applicationActivities: nil)
        
        ActivityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(ActivityVC, animated: true, completion: nil)
    }
    
    @IBAction func GoogleBtn(_ sender: Any) {
        
        let ActivityVC = UIActivityViewController(activityItems: ["www.Google.com"], applicationActivities: nil)
        
        ActivityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(ActivityVC, animated: true, completion: nil)
        
        
    }
    
    
}
