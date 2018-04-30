//
//  ViewController.swift
//  Simple TableView
//
//  Created by 정준수 on 2018. 4. 30..
//  Copyright © 2018년 정준수. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    var animals = ["ONE", "TWO", "THREE", "FOUR", "FIVE"]
    var number = ["1", "2", "3", "4", "5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // UIViewController와 Delegate 연결
        myTableView.delegate = self
        myTableView.dataSource = self
    
    }
    
    // UITableViewDataSoure
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "sell"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        // cell에 image 넣기
        let myImage = UIImage(named:"cat.png")
        cell.imageView?.image = myImage
        
        // cell에 text 넣기
        cell.textLabel?.text = number[indexPath.row]
        cell.detailTextLabel?.text="section= \(indexPath.section) row=\(indexPath.row)"
        
        // cell에 detailText 넣기
        //cell.detailTextLabel?.text = animals[indexPath.row]
        
        return cell
    }

}

