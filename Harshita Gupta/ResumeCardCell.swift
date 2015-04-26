//
//  ResumeCardCell.swift
//  Harshita Gupta
//
//  Created by Harshita Gupta on 4/25/15.
//  Copyright (c) 2015 Harshita Gupta. All rights reserved.
//

import Foundation
import UIKit

class ResumeCardCell: UICollectionViewCell {
    
    @IBOutlet var positionLabel: UILabel!
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var timeFrameLabel: UILabel!
    @IBOutlet var organizationLabel: UILabel!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var mainView: UIView!
    
    var cardItem : ResumeItem?

    override func awakeFromNib() {
        super.awakeFromNib()
        println("card cell awoke from nib")
    }
    
    func setCardInfo(cardItemIn: ResumeItem) {
        println("setting card info")
        self.cardItem = cardItemIn
        
        configureMainCardLook()
        
        setAllHeaderInfo()
        
        configureScrollView()
        
    }
    
    func configureScrollView() {
        
        
        if cardItem?.allText == true {
            var allDetailText : String = ""
            for detail in cardItem?.details! as [ResumeItemDetail]!{
                var currDetailLine : String

                if detail.header == true {
                    currDetailLine = (detail as ResumeItemDetail).text!
                }
                else if (detail as ResumeItemDetail).text! != "" {
                    currDetailLine = "\u{2022}" + " " + (detail as ResumeItemDetail).text!
                }
                else {
                    currDetailLine = (detail as ResumeItemDetail).text!
                }
                
                allDetailText = allDetailText + currDetailLine  + "\n\n"
            }
            var masterDetail = ResumeItemDetail(detailNoImage: allDetailText)
            
            var detailView = NSBundle.mainBundle().loadNibNamed("ResumeItemDetailView", owner: nil, options: nil).last as! ResumeItemDetailViewController
            
            detailView.setResumeDetail(masterDetail)
            scrollView.addSubview(detailView)
            var detailFrame = detailView.frame
            detailFrame.origin.x = 0
            detailFrame.origin.y = 0
            detailFrame.size.width = scrollView.frame.size.width
            detailFrame.size.height = scrollView.frame.size.height
            detailView.frame = detailFrame
            
        }
        
        else {
            for detail in cardItem?.details! as [ResumeItemDetail]! {
                var detailView = NSBundle.mainBundle().loadNibNamed("ResumeItemDetailView", owner: nil, options: nil).last as! ResumeItemDetailViewController
                detailView.setResumeDetail(detail)
                scrollView.addSubview(detailView)
                var detailFrame = detailView.frame
                detailFrame.origin.x = 0
                detailFrame.origin.y = scrollView.frame.size.width
                detailView.frame = detailFrame

            }
        }
        
        scrollViewLook()
    }
    
    func configureMainCardLook() {
        mainView.backgroundColor = UIColor.whiteColor()
        
        mainView.layer.cornerRadius = 10
        
        //BORDER
        mainView.layer.borderColor = UIColor.darkGrayColor().CGColor
        mainView.layer.borderWidth = 2;

        //SHADOW
        mainView.layer.shadowColor = UIColor.blackColor().CGColor
        mainView.layer.shadowOffset = CGSizeMake(0, -2)
        mainView.layer.shadowOpacity = 0.75

    }
    
    
    func setAllHeaderInfo() {
        setPosition()
        setTimeframe()
        setCat()
        setOrg()
        
        headerInfoLook()
    }

    func headerInfoLook() {
        
        if (cardItem?.position == "") {
            organizationLabel.setTranslatesAutoresizingMaskIntoConstraints(true)

            positionLabel.hidden = true
            organizationLabel.adjustsFontSizeToFitWidth = true

            organizationLabel.font = organizationLabel.font.fontWithSize(30.0)
            organizationLabel.frame.offset(dx: 0, dy: -25)
            var orgFrame = organizationLabel.frame
            orgFrame.size.height = organizationLabel.frame.size.height + 10.0
            organizationLabel.frame = orgFrame
            organizationLabel.textColor = cardItem?.category?.color_dark!
            organizationLabel.adjustsFontSizeToFitWidth = true


        }
        
        //SET COLORS
        positionLabel.textColor = cardItem?.category?.color_dark!
        categoryLabel.textColor = cardItem?.category?.color!
        timeFrameLabel.textColor = cardItem?.category?.color!
    }

    
    func setOrg() {
        organizationLabel.text = cardItem?.company!
        organizationLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setPosition() {
        positionLabel.text = cardItem?.position!
        positionLabel.adjustsFontSizeToFitWidth = true

    }
    
    func setCat() {
        categoryLabel.text = cardItem?.category?.catName!
        //categoryLabel.adjustsFontSizeToFitWidth = true

    }
    
    func setTimeframe() {
        timeFrameLabel.text = cardItem?.timeframe!
    }
    
    
    func scrollViewLook() {
        scrollView.backgroundColor = UIColor.whiteColor()
        
    }
    
    //override init(frame: CGRect) {
        //print("init has been run")
        //super.init(frame:frame)
        //var cardView = UIScrollView(frame: CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame)))
    
        //cardView.clipsToBounds = true
        //self.contentView.addSubview(cardView)
        
       // self.label.text = self.cardItem!.position
   // }

//    required init(coder aDecoder: NSCoder) {
//        print("init with coder has been run")
//        fatalError("init(coder:) has not been implemented")
//    }
//    
}