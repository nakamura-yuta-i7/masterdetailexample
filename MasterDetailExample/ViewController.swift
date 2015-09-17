//
//  ViewController.swift
//  MasterDetailExample
//
//  Created by 中村祐太 on 2015/09/17.
//  Copyright (c) 2015年 中村祐太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fruitWebView: UIWebView!
    var fruitName = ""
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // detailLabel.text = fruitName
        let urlString = "http://ja.wikipedia.org/wiki/" + fruitName
        self.fruitWebView.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

