//
//  ViewController.swift
//  demo
//
//  Created by 刘鹏 on 2018/9/10.
//  Copyright © 2018年 刘鹏. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textInput: UITextView!
    
    @IBOutlet weak var textSwich: UISwitch!
    
    @IBOutlet weak var TextFieid: UITextField!
    
    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 设置背景文字
        TextFieid!.placeholder = "我是文本框"
        // 设置初始文本
        textInput!.text = ""
        // 设置背景颜色
        textInput!.backgroundColor = UIColor.gray
        // 设置UITextField风格
        TextFieid!.borderStyle = UITextBorderStyle.line
        //是否每一次进入编辑状态
        TextFieid.clearsOnBeginEditing = true
        //键盘
        TextFieid.keyboardType = UIKeyboardType.asciiCapable
        //对齐方式
        TextFieid.textAlignment = NSTextAlignment.center
        //大小自适应
        TextFieid.adjustsFontSizeToFitWidth = true
        //加左右视图
        let a : CGRect = CGRect(x: 0, y: 0, width: 40, height: 40)
        let b : CGRect = CGRect(x: 0, y: 0, width: 40, height: 40)
        let viewLeft : UIView = UIView(frame: a)
        let viewRight : UIView = UIView(frame: b)
        viewLeft.backgroundColor = UIColor.blue
        viewRight.backgroundColor = UIColor.cyan
        TextFieid.leftView = viewLeft
        TextFieid.rightView = viewRight
        TextFieid.leftViewMode = UITextFieldViewMode.always
        TextFieid.rightViewMode = UITextFieldViewMode.always
        //键盘附加视图
        let board: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        board.backgroundColor = UIColor.blue
        TextFieid.inputAccessoryView = board
        
        
        //设置代理
        TextFieid.delegate = self
        
        
        //self.view.addSubview(textInput)
        textViewDidEndditing(textInput)
    }

    var str: String = ""
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        str = str + string
        print(str)
        textInput!.text = str
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func textViewDidEndditing(_ textView: UITextView) {
        if (textView.text == "") {
            textView.text = "Placeholder"
            textView.textColor = UIColor.darkGray
        }
        textView.resignFirstResponder()
    }
    
    
    
}


























