# revTableView
2016.05._Tableview_revその2

// ワンテンポ遅れて表示された原因
// tableView(tableView: UITableView, did"Des"electRowAtIndexPath indexPath: NSIndexPath)
// になっていた。間違いやすい注意( 'ω')

ちなみにDeselectRowAtIndexPathになると最初の選択では
クリックが反応せず、２回目以降は１つ前に選択されたやつが
表示された。。。
