//
//  ViewController.swift
//  revTableView
//
//  Created by satoshiii on 2016/05/08.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

	@IBOutlet weak var myTableView: UITableView!
	
	var selectedIndex = -1
	var sentoList = ["一の湯","御所の湯","まんだら湯","地蔵湯","鶴の湯"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return sentoList.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell
	{
		var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
		cell.textLabel!.text = "\(sentoList[indexPath.row])"
		return cell
	}
	
	// ワンテンポ遅れて表示された原因
	// tableView(tableView: UITableView, did"Des"electRowAtIndexPath indexPath: NSIndexPath)
	// になっていた。間違いやすい注意
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		print("\(indexPath.row)行目の風呂を選択")
		selectedIndex = indexPath.row
		performSegueWithIdentifier("showsecView", sender: nil)

	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		var secVC = segue.destinationViewController as! secViewController
		// secVCにselected.Indexを書けばエラーが消えた
		secVC.selectedIndex = selectedIndex
		
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//		// Dispose of any resources that can be recreated.
//	}


}

