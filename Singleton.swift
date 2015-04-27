//
//  AppColors.swift
//  Harshita Gupta
//
//  Created by Harshita Gupta on 4/25/15.
//  Copyright (c) 2015 Harshita Gupta. All rights reserved.
//

import Foundation
import UIKit

class Singleton {
    class var sharedInstance: Singleton {
        struct Static {
            static var instance: Singleton?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = Singleton()
        }
        
        return Static.instance!
    }

    
    struct AppColorSchemeHexes {
        static var blue = "76B0E0"
        static var blue_dark = "334C60"
        static var orange = "F9A930"
        static var orange_dark = "FC6924"
        static var green = "A5BC49"
        static var green_dark = "6D7C30"
        static var purple = "9F8EC4"
        static var purple_dark = "7D57CE"
        static var yellow = "F2E22A"
        static var yellow_dark = "B2A61F"
        static var sea = "6AC196"
        static var sea_dark = "4E8E6E"
        static var pink = "D781A4"
        static var pink_dark = "573443"
        static var red = "EF7661"
        static var red_dark = "6F372D"

    }

    
    struct HG_ResumeItems {
        
        // START EDUCATION
        struct education {
            
            //// START MSJ
            struct msj {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "GPA: 4.32 weighted on a 4.0 scale")
                    static var d1 = ResumeItemDetail(detailNoImage: "")
                    static var d2 = ResumeItemDetail(detailNoImage: "AP Calculus BC")
                    static var d3 = ResumeItemDetail(detailNoImage: "AP Physics")
                    static var d4 = ResumeItemDetail(detailNoImage: "AP Statistics")
                    static var d5 = ResumeItemDetail(detailNoImage: "Discrete Math")
                    static var d6 = ResumeItemDetail(detailNoImage: "Finite Math")
                    static var d7 = ResumeItemDetail(detailNoImage: "Straight A's")
                
                    static var all : [ResumeItemDetail] = [ d0,d1,d2,d3,d4,d5,d6,d7]
                }
                static var item = ResumeItem(cat: "ed", withPos: "", withCompany: "Mission San Jose High School", withTimeframe: "Class of 2016", withDetails: details.all )
            }
            
            ////// END MSJ
            
            /////START COLLEGE
            struct ohlone {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "Ohlone College")
                    static var d1 = ResumeItemDetail(detailNoImage: "Introduction to Programming Using Java")
                    static var d2 = ResumeItemDetail(detailNoImage: "Mobile Application Development")
                    static var d3 = ResumeItemDetail(detailNoImage: "Discrete Math for Computers")
                    static var d4 = ResumeItemDetail(detailNoImage: "Straight A's")
                    static var d5 = ResumeItemDetail(detailNoImage: "")
                    static var d6 = ResumeItemDetail(headerDetailNoImage: "Independent Coursework")
                    static var d7 = ResumeItemDetail(detailNoImage: "Stanford's CS106A Programming Methodology")
                    static var d8 = ResumeItemDetail(detailNoImage: "AP Computer Science Test (5)")
                    static var d9 = ResumeItemDetail(detailNoImage: "AP Psychology Test (5)")
                    
                    static var all : [ResumeItemDetail] = [d0,d1,d2,d3,d4,d5,d6,d7,d8,d9]
                }
                static var item = ResumeItem(cat: "ed", withPos: "", withCompany: "College Courses", withTimeframe: "Enrichement", withDetails: details.all )
            }
            
            //END COLLEGE
            
            //START COSMOS
            struct cosmos {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "The California State Summer School for Mathematics and Science (COSMOS) is a four-week residential academic program for high achieving math and science students.")
                    static var d1 = ResumeItemDetail(detailNoImage: "Students learn from and work closely with University of California faculty.")
                    static var d2 = ResumeItemDetail(detailNoImage: "Concentration: Number Theory and Logic")
                    static var d3 = ResumeItemDetail(detailNoImage: "Final project: Induction, Recursion, and the Fibonacci Numbers")
                    static var d4 = ResumeItemDetail(detailNoImage: "Wrote programs to complete COSMOS assignments. Would examine program output and trace patterns to form theoretical mathematics conjectures, eg. Fermat's Little Theorem, Wilson's Theorem, Law of Quadratic Reciprocity.")
                    
                    static var all : [ResumeItemDetail] = [d0,d1,d2,d3,d4]
                }
                static var item = ResumeItem(cat: "ed", withPos: "", withCompany: "COSMOS, UCSC", withTimeframe: "Summer 2014", withDetails: details.all )
            }
            //END COSMOS
            
            
            static let allItems : [ResumeItem] = [ msj.item, ohlone.item, cosmos.item ]
            
        }// END EDUCATION
        
        //START SKILLS
        struct skills {
            
            //// START LANGUAGES
            struct languages {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "Swift, iOS Development")
                    static var d1 = ResumeItemDetail(headerDetailNoImage: "Java, C++, C")
                    static var d2 = ResumeItemDetail(headerDetailNoImage: "Web: HTML, CSS, JS, node.js, bootstrap")
                    
                    static var all : [ResumeItemDetail] = [ d0,d1,d2 ]
                }
                static var item = ResumeItem(cat: "skills", withPos: "", withCompany: "Programming Languages", withTimeframe: "", withDetails: details.all )
            }
            
            ////// END LANGUAGES

            static let allItems : [ResumeItem] = [ languages.item ]

        }
        //END SKILLS
        
        ///START AWARDS
        struct awards {
            
            //// START NCWIT
            struct ncwit {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "Recognized by the National Center for Women & Information Technology (NCWIT) National Award Committee for computing- related aspirations and for demonstrated, outstanding aptitude and interest in information technology and computing; solid leadership ability; good academic history; and plans for post-secondary education.")
                    
                    static var all : [ResumeItemDetail] = [d0]
                }
                static var item = ResumeItem(cat: "awards", withPos: "Award for Aspirations in Computing", withCompany: "National Center for Women and Information Technology", withTimeframe: "2015", withDetails: details.all )
            }
            
            ////// END NCWIT
            
            static let allItems : [ResumeItem] = [ ncwit.item ]
            
        }// END AWARDS

        
        
        
        
        // START EXPERIENCE
        struct experience {
            
            //// START EPA
            struct epa {
                struct details {
                    //static var
                    static var epaimdata = NSData(contentsOfFile: "EPA1")
                    
                    static var EPAImage1 = FLAnimatedImage(GIFData: epaimdata)
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "Designed an iOS city-beautification mobile application that allows users to submit a geo-tagged photo of abandoned trash, fallen trees, graffiti, etc. to the city for removal")
                   // static var d0 = ResumeItemDetail(detailWithDescription: "Designed an iOS city-beautification mobile application that allows users to submit a geo-tagged photo of abandoned trash, fallen trees, graffiti, etc. to the city for removal.", withVisuals: true, accompanyingImage: EPAImage1, isEmbedded: false, isHeader: true)
                     static var d1 = ResumeItemDetail(detailNoImage: "Won the Most Social Impact Hack at the Pilot East Palo Alto Hackathon for the app.")
                     static var d2 = ResumeItemDetail(detailNoImage: "Presented app at a city meeting attended by their IT, Engineering, Maintenance, and Police Departments")
                     static var d3 = ResumeItemDetail(detailNoImage: "Currently working to modify the app to the needs of the city. Vice Mayor of the city of East Palo Alto, Ms. Lisa Yarbrough-Gauthier, has connected me to and I am working with the city’s Community and Economic Development Department. The app will undergo review before it is proposed for adoption to the City Council.")
                    
                     static var all : [ResumeItemDetail] = [ d0,d1,d2,d3]
                }
                static var item = ResumeItem(cat: "exp", withPos: "Independent iOS Developer", withCompany: "City of East Palo Alto's Community Beautification App", withTimeframe: "November 2014- Present", withDetails: details.all)
            }
            
            ////// END EPA
            
            /////START SS
            struct ss {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "Leading the initiative to revamp my high school newspaper's mobile application and website.")
                    static var d1 = ResumeItemDetail(detailNoImage: "Designed and implemented an iOS app (Swift) in Xcode. App uses JSONs and Wordpress to make requests to www.thesmokesignal.org and display articles/ image galleries by section. The app is complete, and the newspaper is currently in the process of deploying it. Android app will also be developed after the iOS app is  deployed.")
                    static var d2 = ResumeItemDetail(detailNoImage: "Upgrading the school newspaper’s website and its backend. The upgrade will allow for integrating tools for more interactivity under a web subdomain. (eg. www.interactive.thesmokesignal.org). Using bootstrap and standard web technologies to develop the front end and integrate it with Wordpress' backend. The new website is scheduled for launch in May 2015.")
                    
                    static var all : [ResumeItemDetail] = [d0,d1,d2]
                }
                static var item = ResumeItem(cat: "exp", withPos: "Technical Project Lead", withCompany: "The Smoke Signal, Mission San Jose High's School Newspaper", withTimeframe: "August 2014- Present", withDetails: details.all )
            }
            
            //END SS
            
            //START ftc
            struct ftc {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "Programmer for FIRST Tech Challenge Team 7591: Voltage of Imagination.")
                    static var d1 = ResumeItemDetail(detailNoImage: "FIRST Tech Challenge (FTC) teams design, build, and program robots to compete against other teams insports-style matches. We work together to make creative solutions for that year's challenge, and also spend time engaging with the community and spreading our love of robotics through outreach events at libraries and after-school centers.")
                    static var d2 = ResumeItemDetail(detailNoImage: "As programmer for the team, I:")
                    static var d3 = ResumeItemDetail(headerDetailNoImage: "\tDevelop software for self-driving and remote-controlled robots")
                    static var d4 = ResumeItemDetail(headerDetailNoImage: "\tprogram motors, encoders, sensors (gyroscope, rotation, ultrasonic, infrared, color, touch)")
                    static var d5 = ResumeItemDetail(detailNoImage: "Won 7 awards across 3 levels of competition in the 2014-2015 season.")
                    static var d6 = ResumeItemDetail(detailNoImage: "Advanced to the FIRST World Championship held in St. Louis, Missouri in April 2015.")

                    
                    static var all : [ResumeItemDetail] = [d0,d1,d2,d3,d4, d5, d6]
                }
                static var item = ResumeItem(cat: "exp", withPos: "Robot Programmer", withCompany: "FTC Team 7591: Voltage of Imagination", withTimeframe: "June 2014- Present", withDetails: details.all )
            }
            //END ftc

            
            //START botball
            struct botball {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "Botball teams design, build, program, and document robots to compete in sports-style matches.")
                    static var d1 = ResumeItemDetail(detailNoImage: "Self-driving robot software uses advances navigation algorithms that rely on wave propagation for finding shortest paths. There is also extensive use of sensors.")
                    static var d2 = ResumeItemDetail(detailNoImage: "Awards won: Alliance Winners, Spirit of Botball, and Outstanding Documentation")
                    static var d3 = ResumeItemDetail(detailNoImage: "Team is moving on to the Global Conference for Educational Robotics")
                    
                    static var all : [ResumeItemDetail] = [d0,d1,d2,d3]
                }
                static var item = ResumeItem(cat: "exp", withPos: "Robot Programmer", withCompany: "Botball Team 0535: Polaris", withTimeframe: "January 2015- Present", withDetails: details.all )
            }
            //END botball

            
            //START technovation
            struct technovation {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "Part of a four-student team working together to design and develop mobile apps, and then pitch our “start-up” businesses to investors.")
                    static var d1 = ResumeItemDetail(detailNoImage: "Developed an Android app \"Bodyguard\" that helps women feel safe while commuting.")
                    static var d2 = ResumeItemDetail(detailNoImage: "Used the Google Maps API combined with crime-spotting data from San Francisco to chart safer walking routes for commuters. The app also offered quick emergency communication, safety tips, and a live local crime feed.")
                    
                    static var all : [ResumeItemDetail] = [d0,d1,d2]
                }
                static var item = ResumeItem(cat: "exp", withPos: "", withCompany: "Technovation App Challenge 2014", withTimeframe: "January 2014- May 2014", withDetails: details.all )
            }
            //END technovation
            
            
            static let allItems : [ResumeItem] = [ epa.item, ss.item, ftc.item , botball.item, technovation.item]
            
        }// END experience

        
        
        
        // START orgs
        struct orgs {
            
            //// START ACM
            struct acm {
                struct details {
                    static var d0 = ResumeItemDetail(detailNoImage: "Part of a five-student team that created an ACM Chapter and club at Mission San Jose High School")
                    static var d1 = ResumeItemDetail(detailNoImage: "Developed an AP Computer Science Curriculum, and teach lectures twice a week after school to students interested in computing. Prepare students to take the AP Computer Science Test in May.")
                    static var d2 = ResumeItemDetail(detailNoImage: "Concepts taught")
                    static var d3 = ResumeItemDetail(headerDetailNoImage: "\tIntroduction to programming: variables, conditionals, loops.")
                    static var d4 = ResumeItemDetail(headerDetailNoImage: "\tObject Oriented Programming: classes, objects, inheritance, polymorphism")
                    static var d5 = ResumeItemDetail(headerDetailNoImage: "\tAlgorithms: Sorting and Searching")
                    static var d6 = ResumeItemDetail(detailNoImage: "Hold extra-enrichment labs, guest speaker sessions, and year-round activities for chapter members.")

                    static var all : [ResumeItemDetail] = [ d0,d1,d2,d3, d5, d6]
                }
                static var item = ResumeItem(cat: "orgs", withPos: "VP of Communications & AP Computer Science Teacher", withCompany: "Mission San Jose Association for Computing Machinery", withTimeframe: "January 2014- Present", withDetails: details.all )
            }
            
            ////// END ACM
            
            /////START gtgtc
            struct gtgtc {
                struct details {
                    static var d0 = ResumeItemDetail(headerDetailNoImage: "Work with Girls Teaching Girls to Code (GTGTC), an organization dedicated to improving the women-to-men ratio in the Computing Industry.")
                    
                    static var all : [ResumeItemDetail] = [d0]
                }
                static var item = ResumeItem(cat: "orgs", withPos: "High School Liaison", withCompany: "Stanford University Girls Teaching Girls to Code", withTimeframe: "January 2014- Present", withDetails: details.all )
            }
            
            //END gtgtc
            
            static let allItems : [ResumeItem] = [ acm.item,gtgtc.item]
            
        }// END technovation

        
        
    
        static let allSectionItems : [ResumeItem] = education.allItems + skills.allItems + awards.allItems + experience.allItems + orgs.allItems//+ subsequent sections when added in

    }

    
    
}