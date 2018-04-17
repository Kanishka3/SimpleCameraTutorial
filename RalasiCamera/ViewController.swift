//
//  ViewController.swift
//  RalasiCamera
//
//  Created by Kanishka TheProgrammer on 17/04/18.
//  Copyright © 2018 Kanishka TheProgrammer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var camera: UIButton!
    
    @IBOutlet var takenImage: UIImageView!
    @IBOutlet var photoLibrary: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func photoLibraryAct(_ sender: UIButton) {
        //this function manages user suplied interface content in terms of images and videos and enables it on the devices supported.
        let picker = UIImagePickerController()
      //  UIImagePickerController is q set of methods that your delegate object must implement to interact with the image picker interface.
       // let photoLibraryd = self as! UINavigationControllerDelegate & UIImagePickerControllerDelegate
        picker.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        // .sourceType is displayed View Controller
        picker.sourceType = .photoLibrary
        //the following function presents the view controller modally
        present(picker, animated:true, completion: nil)
        print(" The photo library was accessed")
    }
    
    @IBAction func cameraAct(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        picker.sourceType = .camera
        present(picker, animated: true, completion: nil)
        
    print("the camera was accessed")
        
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: (AnyObject)]){
        takenImage.image = info[UIImagePickerControllerOriginalImage] as! UIImage!
        //dismisses the view controller which was previously modal
        dismiss(animated: true, completion: nil)
    }
    


}

