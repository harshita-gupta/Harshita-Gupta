//
//  ResumeItem.swift
//  Harshita Gupta
//
//  Created by Harshita Gupta on 4/25/15.
//  Copyright (c) 2015 Harshita Gupta. All rights reserved.
//

import Foundation
import UIKit

class ResumeItem : NSObject {
    
    var category : ResumeCategory?
    //eg. Education, Experience, etc
    
    var position: String?
    //eg. Technical Lead
    
    var company: String?
    //eg. Intel LOL i wish
    
    var timeframe: String?
    //eg. August 2014- Present
    
    //details array containts multiple ResumeDetail objects. Each Resume detail has a line of text (similar to a bullet point on a resume), and an optional visual. Visual can be a sequence of images or a single image. visual can be displayed alongside the detail or under it.
    var details: [ResumeItemDetail]?
    
    
    //allText is useful, since we can use more typical text layout if we know that no images are present in that item.
    var allText: Bool?
    
    override init() {}
    
    init(cat withCat: String, withPos: String, withCompany: String, withTimeframe: String, withDetails: NSArray){
        self.category = ResumeCategory(catType: withCat)
        self.position = withPos
        self.company = withCompany
        self.timeframe = withTimeframe
        self.details = (withDetails as! [ResumeItemDetail])
        
        //we assume that there are no images, then we step through the details and check for any images.
        self.allText = true
        
        for detail in self.details! {
            if ( ( (detail as ResumeItemDetail).visualsPresent ) == true ) {
                self.allText = false
            }
        }
    }
    
}