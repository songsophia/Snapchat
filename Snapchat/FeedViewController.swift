//
//  FeedViewController.swift
//  Snapchat
//
//  Created by Sophia Song on 3/12/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {


    @IBOutlet weak var UserFeed: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserFeed.delegate = self as? UITableViewDelegate
        UserFeed.dataSource = self as? UITableViewDataSource
        
        // Do any additional setup after loading the view.
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
