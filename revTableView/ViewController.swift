//  ViewController.swift
//  revTableView
//
//  Created by satoshiii on 2016/05/08.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

	@IBOutlet weak var myTableView: UITableView!
	
	var selectedIndex = -1
	var sentoList = ["ダージリン","アッサム","オレンジペコ","アールグレイ"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return sentoList.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell
	{
		let cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
		cell.textLabel!.text = "\(sentoList[indexPath.row])"
		cell.imageView?.image = UIImage(named: "\(indexPath.row).png")
		return cell
	}
	
	// ワンテンポ遅れて表示された原因
	// tableView(tableView: UITableView, did"Des"electRowAtIndexPath indexPath: NSIndexPath)
	// になっていた。間違いやすい注意
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		print("\(indexPath.row)")
		selectedIndex = indexPath.row
		performSegueWithIdentifier("showsecView", sender: nil)

	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let secVC = segue.destinationViewController as! secViewController
		// secVCにselected.Indexを書けばエラーが消えた
		secVC.selectedIndex = selectedIndex
		// secViewController.sentoList = self.sentoList
		// 配列の入った変数をsegueで受け渡す準備
		// Cannot assign value of type '[String]' to type 'String'
		// ↑ エラー。違う型の箱にString型の値を入れようとしている
		// 次画面でString型の箱を用意していない
		secVC.sentoList = self.sentoList
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//		// Dispose of any resources that can be recreated.
//	}


}

