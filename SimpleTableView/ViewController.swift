//
//  ViewController.swift
//  SimpleTableView
//
//  Created by chenBighead on 2017/5/15.
//  Copyright © 2017年 joybien. All rights reserved.
//

// notes:
//
// Use UIViewController for UITableView
//
// (0) Drag TableView to MainView
// (0.1) add Cell identifier "cell" in property
// (1) Click Right mouse button: Drag TableViewDelgate/DataSource to ViewController
// (2) Add UITableViewDelegate,UITableViewDataSource in Class ViewController
// (3) Add (3.0),(3.1),(3.2)
// Run

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    //(3.0)
    let list = ["Coffee","Cheese","Milk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //(3.1)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
     //(3.2)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    

}

