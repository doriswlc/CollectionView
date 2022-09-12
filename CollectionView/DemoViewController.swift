//
//  ViewController.swift
//  CollectionView
//
//  Created by doriswlc on 2022/9/7.
//

import UIKit


class DemoViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    let legos = [Lego(icon: "marvell01", intro: "01"), Lego(icon: "marvell02", intro: "02"), Lego(icon: "marvell03", intro: "03"), Lego(icon: "marvell04", intro: "04")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension DemoViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return legos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(CollectionViewCell.self)", for: indexPath) as! CollectionViewCell
        let lego = legos[indexPath.item]
        cell.imageView.image = UIImage(named: lego.icon)
        return cell
    }
}
extension DemoViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.bounds.width
        pageControl.currentPage = Int(pageNumber)
    }
}
