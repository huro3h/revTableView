//  secViewController.swift
//  revTableView
//
//  Created by satoshiii on 2016/05/08.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

class secViewController: UIViewController {
	
//	var name = ["ダージリン","アッサム","オレンジペコ","アールグレイ"]
//	var explain = ["紅茶の中でも特に香りを重視される紅茶である。\n\n香りを楽しむためストレートティーで飲まれることが多い。ダージリンが強い香りを持つのは、寒暖の差の激しい標高の高い山地で生産されているためである。\n  セカンドフラッシュではマスカテルフレーバー（マスカットフレーバー）と呼ばれる特徴的な香りの顕著なものが上質とされる。\n  マスカテルフレーバーの香気成分の生成には茶葉に対するウンカの吸汁が関与するとされる。\n  ウンカはセカンドフラッシュが摘まれる時期にもっとも多く発生する。","アッサムとは、インドのアッサム地方でつくられる紅茶の総称である。\n\n  19世紀初頭まで茶は東アジアに限定された作物とみなされていたが、1823年、アッサム地方に交易開拓に来たイギリス人・ロバート・ブルースが野生茶樹を発見した。\n  この植物は最初、独立種として記載され後にチャノキの変種として再記載された。","茶葉の形状としては一番大きい茶葉を指します。\n\n  オレンジの香りがする紅茶だと勘違いされている方も多いですが、違います。 細くよじれた長い形状の茶葉を表す等級名です。\n  オレンジペコと銘打たれて販売されている紅茶がありますが、オレンジペコ という特定の種類の紅茶がある訳ではありません。\n  オレンジペコは茶葉の大きさと形状を示す等級名なので、一口にオレンジペコと云っても、産地も収穫期も異なる無数のオレンジペコが存在します。もちろん香味も様々です。","アールグレイとは、ベルガモットで柑橘系の香りをつけた紅茶でフレーバーティーの一種。\n\n  原料は中国茶のキーマン茶が使われることが多いが、茶葉のブレンドは特に規定がないため、セイロン茶や中国茶とセイロン茶のブレンド、稀にダージリンなども用いられる。"]
	
	@IBOutlet weak var myTeaName: UILabel!
	@IBOutlet weak var myTeaEx: UITextView!
	@IBOutlet weak var myTeaPic: UIImageView!
	
	// var sentoList = ""
	// ↓ [String] NSArray型 配列の中身のデータがString型の場合
	// 以下の書き方になる.
	var sentoList: [String] = []
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	var selectedIndex = -1
	
	override func viewWillAppear(animated: Bool) {
		
		let r = (selectedIndex)
		
		// 以下json.txt絡み
		var path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
		
		// 数字の羅列(読めない)状態で代入
		var jsondata = NSData(contentsOfFile: path!)
		
		// 配列データに変換するよ(読めるデータにして返す)
		// try!(例外処理: エラーが起こった時に()で囲んだ部分を処理する =nilにして返す)
		// 結果変なエラーが起こりにくくなる [Swift2.0〜]
		let jsonArray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as!
		NSArray
		
		// 配列の個数だけ繰り返して表示する(for in 高速列挙で datに代入)
		// for dat in jsonArray {
		// 	print ("値=[\(dat)]")
		// }

		
		myTeaPic.image = UIImage(named: "\(r).png")
		myTeaName.text = sentoList[r]
		myTeaEx.text = jsonArray[r] as! String
	}
	
	
	
		

	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

}
