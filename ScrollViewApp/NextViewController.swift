//
//  NextViewController.swift
//  ScrollViewApp
//
//  Created by t_kirifu on 2020/10/29.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellName = "CustomCell"
    let titleCellName = "TitleCustomCell"
    
    let array = ["今日からやｒ", "いつもとな", "かんねふ\r\nぇふぃん　", "よーろっぱじん"]
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.backgroundColor = .gray
        
        registerCell(tableView: tableView, cellName: cellName)
        registerCell(tableView: tableView, cellName: titleCellName)
//
//        tableView.sectionHeaderHeight = CGFloat.leastNormalMagnitude
        
        
        
//        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 10))
//        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 10))
//
        
        //tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: CGFloat.leastNormalMagnitude))
        
        // Do any additional setup after loading the view.
    }
    
    func registerCell(tableView: UITableView, cellName: String) {
        tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
    }
    
}

extension NextViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        count += 1
//
//
//
//        if count == 36 {
//            return 10
//        }
        
        return CGFloat.leastNormalMagnitude
    }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        count += 1
        if count == 8 {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 10))
 
            
            
            view.backgroundColor = .blue
            return view
        }
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: CGFloat.leastNormalMagnitude))
        view.backgroundColor = .blue
        return view
    }
    //
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 10))
//        view.backgroundColor = .red
//        return view
//    }
 
    
//    //この関数内でセクションの設定を行う
//    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//            let label : UILabel = UILabel()
//        label.backgroundColor = UIColor.gray
//        label.textColor = UIColor.white
//            if(section == 0){
//                label.text = "top"
//            } else if (section == 1){
//                label.text = "fkdjf"
//            }
//            return label
//    }
    
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//            // 背景色を変更する
//            view.tintColor = .red
//
//            let header = view as! UITableViewHeaderFooterView
//            // テキスト色を変更する
//            header.textLabel?.textColor = .white
//        }
//    private func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        if section == 0 {
//            return CGFloat.leastNormalMagnitude
//        }
//        return tableView.sectionHeaderHeight
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
        
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: titleCellName, for: indexPath) as! TitleCustomCell
            cell.label.text = "\(array[indexPath.row])" + "       \(indexPath.row)" + "      \(indexPath.section)"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
            cell.label.text = "\(array[indexPath.row])" + "       \(indexPath.row)" + "      \(indexPath.section)"
            if indexPath.row == 2 {
                cell.label.backgroundColor = .purple
            } else {
                cell.label.backgroundColor = .white
            }
            
            return cell
        }
        
    }
    
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
    //
    //        if indexPath.row == 0 {
    //            cell.label.backgroundColor = .red
//        }
//
//        cell.label.text = "\(array[indexPath.row])" + "       \(indexPath.row)" + "      \(indexPath.section)"
//
//        return cell
//    }
    
    
    
    
}

extension NextViewController: UITableViewDelegate {
    
    
    
}
