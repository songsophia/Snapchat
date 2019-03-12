//
//  FeedPickerViewController.swift
//  Snapchat
//
//  Created by Divi Schmidt on 3/5/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class FeedPickerViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var feedTableView: UITableView!
    
    @IBOutlet weak var postingImage: UILabel!
    
    @IBOutlet weak var feedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        feedTableView.delegate = self
        feedTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    let data = Data();
    var imgName: String = "";

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.feeds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "protoLabel", for: indexPath) as? FeedViewCell {
            
            let cellUILabel = UILabel(named: data.feeds[indexPath.item])
            
            cell.feedLabel.text = cellUIImage
            return cell
        }
        return UICollectionViewCell()
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
