//
//  ViewController.swift
//  CodableDemo
//
//  Created by ZhaoChen on 2018/3/29.
//  Copyright © 2018年 WaLan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.url(forResource: "Json.geojson", withExtension: nil)
        
        let data = try? Data.init(contentsOf: path!)
        let model = try? JSONDecoder().decode(DetailModel.self, from: data!)
        
        print("model====\(model!)")
        
        let jsondic = try? JSONEncoder().encode(model!)
        let jsonstr = String.init(data: jsondic!, encoding: .utf8)
        
        print("jsonstr===\(jsonstr!)")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

