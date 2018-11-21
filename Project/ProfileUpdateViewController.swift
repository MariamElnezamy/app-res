//
//  ProfileViewController.swift
//  
//
//  Created by Admin on 10/31/18.
//
//

import UIKit

class ProfileViewController: UIViewController ,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBAction func Cancel(_ sender: Any) {
   
        dismiss(animated: true, completion: nil)
  
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imageView.layer.cornerRadius = self.imageView.frame.size.height / 2

    }
    
    @IBOutlet var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    
    @IBAction func AddPic(_ sender: Any) {
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
        
    }
   
    
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.contentMode = .scaleAspectFit
            imageView.image = pickedImage
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    


}
