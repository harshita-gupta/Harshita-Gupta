//
//  ViewController.swift
//  Harshita Gupta
//
//  Created by Harshita Gupta on 4/24/15.
//  Copyright (c) 2015 Harshita Gupta. All rights reserved.
//

import UIKit

class ResumeCardViewController : UICollectionViewController {

    var resumeCards: NSArray = Singleton.HG_ResumeItems.allSectionItems
    
    override func viewDidLoad() {
        println("view loaded")

        super.viewDidLoad()
    
        self.collectionView?.registerNib(UINib(nibName: "ResumeCardCell", bundle: NSBundle.mainBundle()), forCellWithReuseIdentifier: "resumeCard")
        
        println("registered cell")
        // Do any additional setup after loading the view, typically from a nib.
        
      //  self.stackedLayout.fillHeight = false
       // self.stackedLayout.alwaysBounce = true
       // self.unexposedItemsAreSelectable = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewWillAppear(animated: Bool) {
        self.setNeedsStatusBarAppearanceUpdate()
    }

    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.resumeCards.count
    
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("resumeCard", forIndexPath: indexPath) as! ResumeCardCell
        
        cell.setCardInfo((resumeCards[ indexPath.row ] as! ResumeItem))

        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        var shouldSelect = true;
        var indexPath:NSIndexPath
        for indexPath in collectionView.indexPathsForSelectedItems(){
            collectionView.deselectItemAtIndexPath(indexPath as? NSIndexPath, animated: true)
            self.collectionView(collectionView, didDeselectItemAtIndexPath: indexPath as! NSIndexPath)
            shouldSelect = false
        }
        return shouldSelect
    }

    override func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        collectionView.performBatchUpdates(nil, completion: nil)
        collectionView.scrollEnabled = true
    }
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        collectionView.performBatchUpdates(nil, completion: nil)
        collectionView.scrollEnabled = false
    }
    
    override func shouldAutomaticallyForwardAppearanceMethods() -> Bool {
        return true
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    


}