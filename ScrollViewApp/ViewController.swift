//
//  ViewController.swift
//  ScrollViewApp
//
//  Created by Takahiro Kirifu on 2020/10/21.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var houseCallView: CustomView!
    @IBOutlet weak var locationView: CustomView!
    @IBOutlet weak var requestView: CustomView!
    @IBOutlet weak var detailView: CustomView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = false
        
        setContent(view: houseCallView, itemName: "往診日時", content: "6/23 15:05")
        setContent(view: locationView, itemName: "往診場所", content: "老人ホーム\r\n460-3333\r\n名古屋市中区なんとか二丁目666-666なんとかホーム")
        setContent(view: requestView, itemName: "申請", content: "訪問介護ステーション ナーシングみなみみなみ")
        setContent(view: detailView, itemName: "申請内容", content: "fadfjmelkf;jeklfmeklwmflekjfp'e\r\njmflkjekl;fjew'lkjf'ewjkl'rjelkje'kjfの書の世に出づるにいたりた\r\nるは、函館にある秦慶治氏、及び信濃にある神津猛氏のたまものなり。労作終る\r\nの日にあたりて、このものがたりを二人の恩人のまへにさゝぐ。'ewkj'kfejkfjekl'jfw'jfklejej'fejwl'fkje私はそのｙ人を常に先生\r\nとよんでいた。")
        
        contentView.frame.size.height = houseCallView.frame.size.height + locationView.frame.size.height + requestView.frame.size.height + detailView.frame.size.height
        // Do any additional setup after loading the view.
    }
    
    private func setContent(view: CustomView, itemName: String, content: String) {
        
        view.itemLabel.text = itemName
        view.contentLabel.text = content
        
        view.contentLabel.numberOfLines = 0
        view.contentLabel.lineBreakMode = .byCharWrapping
        view.contentLabel.sizeToFit()
        
        view.frame.size.height = view.contentLabel.frame.size.height + 20
        
    }


}

