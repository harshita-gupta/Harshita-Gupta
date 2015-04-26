//
//  ResumeCategory.swift
//  Harshita Gupta
//
//  Created by Harshita Gupta on 4/25/15.
//  Copyright (c) 2015 Harshita Gupta. All rights reserved.
//

import Foundation
import UIKit

class ResumeCategory : NSObject {
    
    //each resume item has a category, which indicates what "section" of a conventional resume it would belong to, like Education, Experience, Awards, etc
    
    var catName: String?
    var color: UIColor?
    var color_dark : UIColor?
    
    override init() {
        
    }
    
    
    //catType is either ed, skills, awards, exp, or org
    init (catType: String) {
        
        switch catType {
        case "ed" :
            self.catName = "Education"
        case "skills" :
            self.catName = "Skills"
        case "awards" :
            self.catName = "Awards"
        case "exp" :
            self.catName = "Experience"
        case "org" :
            self.catName = "Organizations"
        default :
            self.catName = nil
        }
        
        switch self.catName! {
        case "Education" :
            color = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.blue)
            
        case "Skills" :
            color = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.orange)
            
        case "Awards" :
            color = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.purple)
            
        case "Experience" :
            color = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.green)
            
        case "Organizations" :
            color = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.pink)
        default :
            color = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.purple)
        }

        switch self.catName! {
        case "Education" :
            color_dark = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.blue_dark)
            
        case "Skills" :
            color_dark = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.orange_dark)
            
        case "Awards" :
            color_dark = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.purple_dark)
            
        case "Experience" :
            color_dark = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.green_dark)
            
        case "Organizations" :
            color_dark = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.pink_dark)
        default :
            color_dark = UIColor(rgba: "#" + Singleton.AppColorSchemeHexes.purple_dark)
        }

        
    }
}