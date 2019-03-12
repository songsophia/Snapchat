//
//  FeedPickerViewController.swift
//  Snapchat
//
//  Created by Divi Schmidt on 3/5/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class FeedPickerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var feedTableView: UITableView!
    
    @IBOutlet weak var postingImage: UILabel!
    
    @IBOutlet var feedDetails: UILabel!
    
    @IBOutlet weak var postButton: UIButton!
    
    @IBAction func clickPostButton(_ sender: UIButton) {
        if (selectedImage != nil && feedDetails.text != nil) {
            let feed = feedDetails.text!
            
            // creates a new "snap" containing the information needed to show it when the user opens a snap
            let newSnap = Snap(image: selectedImage!, feed: feed);
            print(newSnap);
            
            // adds the new snap to the dictionary which keeps track of all posted snaps
            if (feedData[feed] != nil) {
                feedData[feed]! += [newSnap]
            }
            feedData[feed] = [newSnap]
        }
    }
    
    var selectedImage: UIImage?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postingImage.text = imgName;
        
        feedTableView.delegate = self
        feedTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    let data = Data();
    var imgName: String = "Post: ";

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.feeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell") as? FeedViewCell {
            cell.feedName.text = data.feeds[indexPath.row]
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedImage = UIImage(named: data.images[indexPath.item])!
        
        feedDetails.text = data.feeds[indexPath.row];
        print("Selected \(data.feeds[indexPath.row])")
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
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
