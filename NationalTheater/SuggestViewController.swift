//
//  SuggestViewController.swift
//  NationalTheater
//
//  Created by Parker Chen on 2021/3/15.
//
import UIKit
import Foundation

class SuggestViewController: UIViewController {

    
    //@IBOutlet var containerViews: [UIView]!
    
    //第一個要選outlet collection型態，再來view必須一個一個拉重疊此行。
    @IBOutlet var containerViews: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containerViews[0].isHidden = false
        containerViews[1].isHidden = true
        containerViews[2].isHidden = true
        containerViews[3].isHidden = true
    }

    //所有的Button Action都拉在IBAction同一行
    @IBAction func SuggestButton(_ sender: UIButton) {
        for i in 0...3{
            containerViews[i].isHidden = true
        }
        switch sender.tag{
        case 0:
            containerViews[0].isHidden = false
        case 1:
            containerViews[1].isHidden = false
        case 2:
            containerViews[2].isHidden = false
        case 3:
            containerViews[3].isHidden = false
        default:
            print("button default")
        }
    }


}
