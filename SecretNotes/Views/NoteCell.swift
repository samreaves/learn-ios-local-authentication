//
//  NoteCell.swift
//  SecretNotes
//
//  Created by Sam Reaves on 4/24/19.
//  Copyright © 2019 Sam Reaves Digital. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {
    @IBOutlet var noteLabel: UILabel!
    @IBOutlet var noteLock: UIImageView!
    
    func configure(with note: Note) {
        if note.lockStatus == .locked {
            noteLock.isHidden = false
            noteLabel.text = "This note is locked. Unlock to read."
        } else {
            noteLock.isHidden = true
            noteLabel.text = note.message
        }
        
    }
}
