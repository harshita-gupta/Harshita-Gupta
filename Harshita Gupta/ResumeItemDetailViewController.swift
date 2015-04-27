//
//  ResumeItemDetailViewController.swift
//  Harshita Gupta
//
//  Created by Harshita Gupta on 4/26/15.
//  Copyright (c) 2015 Harshita Gupta. All rights reserved.
//

import Foundation
import UIKit

class ResumeItemDetailViewController : UIView {
    
    var detail : ResumeItemDetail?
    
    @IBOutlet var animImageParentView: UIView!
    @IBOutlet var detailTextField: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awoke from nib")
        //self.backgroundColor
    }
    
    func setResumeDetail (withResumeDetail: ResumeItemDetail) {
        self.detail = withResumeDetail
        setText()
        createOrDeleteImageView()
    }
    
    func createOrDeleteImageView() {
        if detail?.visualsPresent! == true {
            var animImageView : FLAnimatedImageView = FLAnimatedImageView()
            animImageParentView.addSubview(animImageView)
            var imView = animImageView.frame
            imView.origin.x = 0
            imView.origin.y = 0
            imView.size.height = animImageParentView.frame.size.height
            imView.size.width = animImageParentView.frame.size.width
            animImageView.frame = imView
            if (detail?.image != nil) {
                animImageView.animatedImage = detail?.image!
            }
        }
        else {
            var animFrame = animImageParentView.frame
            animFrame.size.height = 0
            animImageParentView.frame = animFrame
        }
    }
    
    func setText() {
        detailTextField.text = detail?.text!
       // detailTextField.frame
    }
    
}