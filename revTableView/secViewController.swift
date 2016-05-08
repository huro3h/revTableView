//  secViewController.swift
//  revTableView
//
//  Created by satoshiii on 2016/05/08.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

class secViewController: UIViewController {

	@IBOutlet weak var myTeaName: UILabel!
	@IBOutlet weak var myTeaEx: UITextView!
	@IBOutlet weak var myTeaPic: UIImageView!
	
	override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	var selectedIndex = -1
	
	override func viewWillAppear(animated: Bool) {
		
		let r = (selectedIndex)
		// print(selectedIndex)
		let path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
		let jsondata = NSData(contentsOfFile: path!)
		
		// 辞書データに変換
		let jsonArray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSArray
		
		// 配列の個数だけ繰り返して表示する
		 for dat in jsonArray {
			 let d1 = dat["name"] as! String
			 let d2 = dat["ex"] as! String
			 // print("name[\(d1)] ex=[\(d2)]")
		 }
		myTeaPic.image = UIImage(named: "\(r).png")
//		myTeaName.text = 
		print(jsonArray)
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

}
