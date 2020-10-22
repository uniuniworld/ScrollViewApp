//
//  CustomView.swift
//  ScrollViewApp
//
//  Created by Takahiro Kirifu on 2020/10/21.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }
    
//    func loadNib() {
//        let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! UIView
//        view.frame = self.bounds
//        self.addSubview(view)
//
//    }
    func loadNib() {
        if let view = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? UIView {
            view.frame = self.bounds
            self.addSubview(view)
        }
        
    }
}
