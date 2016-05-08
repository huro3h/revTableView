//  secViewController.swift
//  revTableView
//
//  Created by satoshiii on 2016/05/08.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

class secViewController: UIViewController {
	
	var name = ["ダージリン","アッサム","オレンジペコ","アールグレイ"]
	var explain = ["紅茶の中でも特に香りを重視される紅茶である。香りを楽しむためストレートティーで飲まれることが多い。ダージリンが強い香りを持つのは、寒暖の差の激しい標高の高い山地で生産されているためである。セカンドフラッシュではマスカテルフレーバー（マスカットフレーバー）と呼ばれる特徴的な香りの顕著なものが上質とされる。マスカテルフレーバーの香気成分の生成には茶葉に対するウンカの吸汁が関与するとされる。ウンカはセカンドフラッシュが摘まれる時期にもっとも多く発生する。","アッサムとは、インドのアッサム地方でつくられる紅茶の総称である。 19世紀初頭まで茶は東アジアに限定された作物とみなされていたが、1823年、アッサム地方に交易開拓に来たイギリス人・ロバート・ブルースが野生茶樹を発見した。この植物は最初、独立種として記載され後にチャノキの変種として再記載された。","茶葉の形状としては一番大きい茶葉を指します。オレンジの香りがする紅茶だと勘違いされている方も多いですが、違います。 細くよじれた長い形状の茶葉を表す等級名です。オレンジペコと銘打たれて販売されている紅茶がありますが、オレンジペコ という特定の種類の紅茶がある訳ではありません。オレンジペコは茶葉の大きさと形状を示す等級名なので、一口にオレンジペコと云っても、産地も収穫期も異なる無数のオレンジペコが存在します。もちろん香味も様々です。","アールグレイとは、ベルガモットで柑橘系の香りをつけた紅茶で、フレーバーティーの一種。原料は中国茶のキーマン茶が使われることが多いが、茶葉のブレンドは特に規定がないため、セイロン茶や、中国茶とセイロン茶のブレンド、稀にダージリンなども用いられる。"]
	
	@IBOutlet weak var myTeaName: UILabel!
	@IBOutlet weak var myTeaEx: UITextView!
	@IBOutlet weak var myTeaPic: UIImageView!
	
	override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	var selectedIndex = -1
	
	override func viewWillAppear(animated: Bool) {
		
		let r = (selectedIndex)
		
		myTeaPic.image = UIImage(named: "\(r).png")
		myTeaName.text = name[r]
		myTeaEx.text = explain[r]
	}
	
	
	
		

	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

}
