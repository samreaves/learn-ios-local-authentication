//
//  ViewController.swift
//  SecretNotes
//
//  Created by Sam Reaves on 4/23/19.
//  Copyright © 2019 Sam Reaves Digital. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension NoteViewController: UITableViewDelegate {
    
}

extension NoteViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as? NoteCell else { return UITableViewCell() }

        cell.configure(with: notesArray[indexPath.row])
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

