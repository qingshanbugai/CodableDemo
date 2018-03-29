//
//  Model.swift
//  CodableDemo
//
//  Created by ZhaoChen on 2018/3/29.
//  Copyright © 2018年 WaLan. All rights reserved.
//

struct DetailModel: Codable {
    var state: String?
    var status: String?
    var data = [DetailDataModel]()
    var nu: String?
    var com: String?
    var message: String?
    var condition: String?
    var ischeck: String?
}

struct DetailDataModel: Codable {
    var ftime: String?
    var time: String?
    var context: String?
}
