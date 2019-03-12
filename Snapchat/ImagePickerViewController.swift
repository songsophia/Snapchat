//
//  ImagePickerViewController.swift
//  Snapchat
//
//  Created by Divi Schmidt on 3/5/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class ImagePickerViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var imgCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgCollectionView.delegate = self
        imgCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    let data = Data();

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "img", for: indexPath) as? ImagePickerViewCell {
            
            let cellUIImage = UIImage(named: data.images[indexPath.item])
            
            cell.imgPickerCell.image = cellUIImage
            return cell
        }
        return UICollectionViewCell()
    }


    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPat,;h: IndexPath) {
        
        let imageName = data.images[indexPath.item]
        let destination = FeedPickerViewController()
        destination.imgName = imageName
        
        performSegue(withIdentifier: "toTableView", sender: self)
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
