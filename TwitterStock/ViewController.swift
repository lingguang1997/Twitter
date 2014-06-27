//
//  ViewController.swift
//  TwitterStock
//
//  Created by Zijiao Liu on 6/26/14.
//  Copyright (c) 2014 Zijiao Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var searchBar: UISearchBar?
    var tableView: UITableView?
    var results: NSArray?
                            
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar = UISearchBar(frame:CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 44))
        self.navigationItem.titleView = searchBar

        tableView = UITableView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height), style: UITableViewStyle.Plain)
        tableView!.registerClass(StockChartTAbleViewCellTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView!.dataSource = self
        tableView!.delegate = self

        self.view.addSubview(tableView)
//        tableView!.backgroundColor = UIColor.redColor()

        // dummy data
        results = ["desc", "chart"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // UITableViewDataSource
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return results!.count;
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as StockChartTAbleViewCellTableViewCell
//        if indexPath.row == 1 {
//            cell.backgroundColor = UIColor.redColor()
//        } else {
//            cell.backgroundColor = UIColor.yellowColor()
//        }
        return cell
    }

    // UITableViewDelegate
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 200
    }


}

