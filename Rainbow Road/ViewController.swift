//
//  ViewController.swift
//  Rainbow Road
//
//  Created by Doaa Albishri on 29/11/2021.
//

import UIKit

class ViewController: UIViewController {
    var color = [UIColor.red , UIColor.orange , UIColor.yellow , UIColor.green, UIColor.blue , UIColor.purple]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self  // add this line
       // tableView.rowHeight = 120
    }
}

extension ViewController: UITableViewDataSource , UITableViewDelegate{
    
    // MAKE SURE THESE ARE WITHIN UITableViewDataSource EXTENSION!
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        return 6
    }

    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier:"MyCell", for: indexPath)
        cell.backgroundColor = color[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        tableView.reloadData()
    }


}



