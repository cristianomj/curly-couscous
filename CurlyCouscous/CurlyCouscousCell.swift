//
//  CurlyCouscousCell.swift
//  CurlyCouscous
//
//  Created by Cristiano Miranda on 3/14/16.
//  Copyright © 2016 Cristiano Miranda. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class CurlyCouscousCell: PFTableViewCell {
    
    @IBOutlet weak var photoView: PFImageView!
    
    var curlycouscousPost: PFObject! {
        didSet {
            self.photoView.file = curlycouscousPost["media"] as? PFFile
            self.photoView.loadInBackground()
        }
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
