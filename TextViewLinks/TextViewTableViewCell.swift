//
//  TextViewTableViewCell.swift
//  TextViewLinks
//
//  Created by Michael Miles on 3/28/22.
//

import UIKit

class TextViewTableViewCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textView.dataDetectorTypes = [.link, .phoneNumber]
        textView.isEditable = false
        textView.isSelectable = true
    }

}
