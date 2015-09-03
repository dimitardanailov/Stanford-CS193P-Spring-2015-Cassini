//
//  ViewController.swift
//  Cassini
//
//  Created by dimitar on 9/3/15.
//  Copyright (c) 2015 dimityr.danailov. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let identifier = segue.identifier {
                ivc.title = identifier
                switch identifier {
                    case "Earth":
                        ivc.imageURL = DemoURL.NASA.Earth
                    case "Cassini":
                        ivc.imageURL = DemoURL.NASA.Cassini
                    case "Saturn":
                        ivc.imageURL = DemoURL.NASA.Saturn
                    default: break
                }
            }
        }
    }
    

}

