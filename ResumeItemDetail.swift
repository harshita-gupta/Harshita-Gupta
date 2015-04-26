//
//  ResumeDetail.swift
//  Harshita Gupta
//
//  Created by Harshita Gupta on 4/25/15.
//  Copyright (c) 2015 Harshita Gupta. All rights reserved.
//

import Foundation
import UIKit

class ResumeItemDetail : NSObject {
    
    //each resume item has a resume detail, which can be related to one bullet point in a job description on a resume. The detail can store text or images.
    
    override init() {
        
        
    }
    
    var text: String?
    var header: Bool?
    var visualsPresent : Bool? //defines whether that detail has a visual or not
    var image : FLAnimatedImage? // can be an array of one image or many images. Use FLAnimatedImage for GIF support.
    var imageEmbedded: Bool? // if this value is true, the image is displayed side-by-side with text. If false, image is displayed under the text.
    
    
    init(detailWithDescription: String, withVisuals: Bool, accompanyingImage: FLAnimatedImage, isEmbedded: Bool, isHeader: Bool) {
        
        self.text = detailWithDescription
        self.visualsPresent = withVisuals
        self.header = isHeader
        
        if self.visualsPresent == false {
            self.image = nil
            self.imageEmbedded = nil
        }
        else {
            self.image = accompanyingImage
            self.imageEmbedded  = isEmbedded
        }
    }
    
    init(headerDetailNoImage descrip: String) {
        self.text = descrip
        self.visualsPresent = false
        self.image = nil
        self.imageEmbedded = nil
        self.header = true
    }
    

    
    init(detailNoImage descrip: String) {
        self.text = descrip
        self.visualsPresent = false
        self.image = nil
        self.imageEmbedded = nil
    }
    
}