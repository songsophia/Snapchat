//
//  Snap.swift
//  Snapchat
//
//  Created by Divi Schmidt on 3/12/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import Foundation
import UIKit

class Snap {
    var image: UIImage;
    var feed: String;
    var opened: Bool;
    
    init(image img:UIImage, feed f:String) {
        image = img;
        feed = f;
        opened = false;
    }
    
    func open() {
        opened = true;
    }
}
