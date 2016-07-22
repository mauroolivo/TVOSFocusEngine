//
//  SimpleCollectionViewController.swift
//  TVOSFocusEngine
//
//  Created by Mauro Olivo on 22/07/16.
//  Copyright © 2016 Mauro Olivo. All rights reserved.
//

import UIKit

class SimpleCollectionViewController: UIViewController {

    let data = ["Apple", "Banana", "Blackberry", "Coconut", "Grapefruit", "Lemon", "Lime", "Mango", "Melon", "Orange", "Peach", "Pear", "Strawberry", "Tamarind"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(collectionView: UICollectionView,
                        didUpdateFocusInContext context: UICollectionViewFocusUpdateContext,
                                                withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        
        if let previousIndexPath = context.previouslyFocusedIndexPath,
            let cell = collectionView.cellForItemAtIndexPath(previousIndexPath) {
            cell.contentView.layer.borderWidth = 0.0
            cell.contentView.layer.shadowRadius = 0.0
            cell.contentView.layer.shadowOpacity = 0
        }
        
        if let indexPath = context.nextFocusedIndexPath,
            let cell = collectionView.cellForItemAtIndexPath(indexPath) {
            cell.contentView.layer.borderWidth = 1.0
            cell.contentView.layer.borderColor = UIColor.blackColor().CGColor
            cell.contentView.layer.shadowColor = UIColor.blackColor().CGColor
            cell.contentView.layer.shadowRadius = 10.0
            cell.contentView.layer.shadowOpacity = 0.9
            cell.contentView.layer.shadowOffset = CGSize(width: 0, height: 0)
           // collectionView.scrollToItemAtIndexPath(indexPath, atScrollPosition: [.CenteredHorizontally, .CenteredVertically], animated: true)
        }
    }
    
}




// MARK: - UICollectionViewDataSource
extension SimpleCollectionViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("simple", forIndexPath: indexPath) as! SimpleCollectionViewCell
        cell.cellLabel.text = data[indexPath.row]
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return data.count
    }
        
}

// MARK: - UICollectionViewDelegate
extension SimpleCollectionViewController: UICollectionViewDelegate {
    

    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
    }
    
    func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        if indexPath.row == 3 { return false }
        return true
    }
}
