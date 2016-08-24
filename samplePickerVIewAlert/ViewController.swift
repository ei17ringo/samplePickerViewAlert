//
//  ViewController.swift
//  samplePickerVIewAlert
//
//  Created by Eriko Ichinohe on 2016/08/24.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var myPickerView: UIPickerView!
    
    // データを配列で用意する
    var tea_list = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.dataSource = self
        myPickerView.delegate = self

    }

    // ピッカービューの列数
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // ピッカービューの行数
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tea_list.count
    }
    
    // ピッカービューに表示する文字
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tea_list[row]
    }
    
    //  ピッカービューで選択された時に行う処理
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //print("選択されたのは\(row)行目で\(tea_list[row])です")
        
        //アラートを作る
        var alertController = UIAlertController(
            title: "紅茶選択", message: "\(tea_list[row])飲みたい？", preferredStyle: .Alert)
        
        //OKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: {action in print("OK")}))
        
        //アラートを表示する
        presentViewController(alertController, animated: true, completion: nil)
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

