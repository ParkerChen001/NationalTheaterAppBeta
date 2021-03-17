//
//  PrinceCollectionViewController.swift
//  NationalTheater
//
//  Created by Parker Chen on 2021/3/15.
//

import UIKit

private let reuseIdentifier = "Cell"

class PrinceCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        /*
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        */
        
        
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 24
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        /*
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        */
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(PrinceCollectionViewCell.self)", for: indexPath) as! PrinceCollectionViewCell
        
        var indexPathStr = ""
        let realIndexPathItem = indexPath.item + 1
        if(realIndexPathItem < 10)
        {
            indexPathStr = "0" + String(realIndexPathItem)
            
        }else
        {
            indexPathStr = String(realIndexPathItem)
        }
        cell.imageView.image = UIImage(named: "C_01_\(indexPathStr)")
        
        // Configure the cell
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tip_021,\(indexPath.row)")
        
        var goToWebSite : String!
        switch indexPath.row{
        case 4:
            goToWebSite = "https://npac-ntch.org/programs/5686-2021TIFA%20%E8%BF%AA%E7%B1%B3%E7%89%B9%E9%87%8C%EF%BC%8E%E5%B8%95%E6%B4%BE%E7%B4%84%E5%AE%89%E5%8A%AA%20%E6%96%B0%E4%BD%9C"

        case 8:
            goToWebSite = "https://npac-ntch.org/programs/5691-2021TIFA%20%E8%87%BA%E7%81%A3TAI%E8%BA%AB%E9%AB%94%E5%8A%87%E5%A0%B4%E2%9C%95%E5%8D%B0%E5%B0%BC%E8%89%BE%E5%8F%AF%E8%88%9E%E5%9C%98%E3%80%8AIta%E3%80%8B%E3%80%81%E3%80%8AAri-Ari%E3%80%8B"
        
        case 11:
            goToWebSite = "https://npac-ntch.org/programs/5536-2021%20%E5%8F%B0%E7%A9%8D%E5%BF%83%E7%AF%89%E8%97%9D%E8%A1%93%E5%AD%A3%E3%80%8A%E5%8D%83%E5%B9%B4%E8%88%9E%E8%87%BA%EF%BC%8C%E6%88%91%E5%8D%BB%E6%B2%92%E6%80%8E%E9%BA%BC%E6%B4%BB%E9%81%8E%E3%80%8B"
            
        case 15:
            goToWebSite = "https://npac-ntch.org/programs/5653-2021TIFA%20%E5%B8%83%E6%8B%89%E7%91%9E%E6%8F%9A%E8%88%9E%E5%9C%98%E3%80%8A%E6%B2%92%E6%9C%89%E5%AE%B3%E6%80%95%E5%A4%AA%E9%99%BD%E5%92%8C%E4%B8%8B%E9%9B%A8%E3%80%8B"
            
        default:
            goToWebSite = "https://npac-ntch.org/programs/5965-2021TIFA%20%E6%8F%90%E4%BA%9E%E6%88%88%EF%BC%8E%E7%BE%85%E6%8F%90%E5%90%89%E6%96%AF%E2%9C%95%E9%87%8C%E6%96%AF%E6%9C%AC%E5%9C%8B%E7%AB%8B%E5%8A%87%E9%99%A2%E3%80%8A%E6%9C%80%E5%BE%8C%E7%9A%84%E6%8F%90%E8%A9%9E%E4%BA%BA%E3%80%8B"
        }
        
        //guard let url = URL(string: "https://stackoverflow.com") else { return }
        guard let url = URL(string: goToWebSite) else { return }
        UIApplication.shared.open(url)
    }
    
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
