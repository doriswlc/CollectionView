//
//  CollectionViewController.swift
//  CollectionView
//
//  Created by doriswlc on 2022/9/7.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    let pics = [Pic(icon: "duck01", intro: "duck"), Pic(icon: "duck02", intro: "duck"), Pic(icon: "duck03", intro: "duck"), Pic(icon: "duck04", intro: "duck"), Pic(icon: "duck05", intro: "duck"), Pic(icon: "duck06", intro: "duck"), Pic(icon: "duck07", intro: "duck"), Pic(icon: "duck08", intro: "duck"), Pic(icon: "duck09", intro: "duck"), Pic(icon: "duck10", intro: "duck"), Pic(icon: "duck11", intro: "duck"), Pic(icon: "duck12", intro: "duck"), Pic(icon: "duck13", intro: "duck"), Pic(icon: "duck14", intro: "duck"), Pic(icon: "duck15", intro: "duck"), Pic(icon: "duck16", intro: "duck"), Pic(icon: "duck17", intro: "duck"), Pic(icon: "duck18", intro: "duck"), Pic(icon: "duck19", intro: "duck"), Pic(icon: "duck20", intro: "duck"), Pic(icon: "duck21", intro: "duck"), Pic(icon: "duck22", intro: "duck"), Pic(icon: "duck23", intro: "duck"), Pic(icon: "duck24", intro: "duck"), Pic(icon: "duck25", intro: "duck"), Pic(icon: "duck26", intro: "duck"), Pic(icon: "duck27", intro: "duck"), Pic(icon: "duck28", intro: "duck"), Pic(icon: "duck29", intro: "duck"), Pic(icon: "duck30", intro: "duck"), Pic(icon: "duck31", intro: "duck"), Pic(icon: "duck32", intro: "duck")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

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
        return pics.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MultiCollectionViewCell.self)", for: indexPath) as! MultiCollectionViewCell
        let pic = pics[indexPath.item]
        cell.picImageView.image = UIImage(named: pic.icon)

        return cell
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
