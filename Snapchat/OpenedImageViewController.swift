//
//  OpenedImageViewController.swift
//  Snapchat
//
//  Created by Sophia Song on 3/12/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class OpenedImageViewController: UIViewController {
    
    @IBOutlet weak var OpenImage: UIImageView!
    
    var pickedImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func tapPhoto(_ sender: Any) {
        self.performSegue(withIdentifier: "backToFeed", sender: self)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
