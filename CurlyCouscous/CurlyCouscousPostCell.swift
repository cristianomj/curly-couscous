//
//  CurlyCouscousPostCell.swift
//  CurlyCouscous
//
//  Created by Cristiano Miranda on 3/14/16.
//  Copyright © 2016 Cristiano Miranda. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class CurlyCouscousPostCell: UITableViewCell {
    
    @IBOutlet weak var photoView: PFImageView!
    @IBOutlet weak var authorLabel: UILabel!
    
    var curlycouscousPost: PFObject! {
        didSet {
            self.photoView.file = curlycouscousPost["media"] as? PFFile
            self.photoView.loadInBackground()
            let user = curlycouscousPost["author"] as? PFUser
            self.authorLabel.text = user?.username
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
