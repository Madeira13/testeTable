//
//  TableViewController.swift
//  testeTable
//
//  Created by Swift on 26/01/2018.
//  Copyright © 2018 Swift. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var arrayCount = ["a","b","c"]
    var aaaa = false

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCount.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = arrayCount[indexPath.row]
        if aaaa == true {
        if indexPath.row == 0 {
            let xPosition =  cell.contentView.frame.origin.x
            //View will slide 20px up
            let yPosition =  cell.contentView.frame.origin.y - 40
            let height =  cell.contentView.frame.size.height
            let width =  cell.contentView.frame.size.width
            cell.contentView.alpha = 1.0
            
            UIView.animate(withDuration: 2, animations: {
        
               
cell.contentView.frame = CGRect(x: xPosition, y: yPosition, width: width, height: height)
//                cell.contentView.alpha = 1.0
                cell.contentView.backgroundColor = UIColor.red
            })
        }
        }
    
        return cell
    }
 

   

}
