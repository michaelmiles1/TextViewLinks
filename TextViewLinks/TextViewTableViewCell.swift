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
        textView.delegate = self
        textView.linkTextAttributes = [
            .foregroundColor: UIColor.black,
            .underlineStyle: 1
        ]
    }

}

extension TextViewTableViewCell: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        switch URL.scheme {
        case "mailto":
            print("EMAIL ADDRESS")
        case "tel":
            print("PHONE NUMBER")
        case "http":
            print("WEBSITE")
        default:
            print("OTHER")
        }
        return false
    }
}
