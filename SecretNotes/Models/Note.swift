//
//  Note.swift
//  SecretNotes
//
//  Created by Sam Reaves on 4/24/19.
//  Copyright © 2019 Sam Reaves Digital. All rights reserved.
//

import Foundation

class Note {
    public private(set) var message: String
    public var lockStatus: LockStatus
    
    init(message: String, lockStatus: LockStatus) {
        self.message = message
        self.lockStatus = lockStatus
    }
}
