//
//  AVViewController.swift
//  NationalTheater
//
//  Created by Parker Chen on 2021/3/16.
//

import UIKit
import YoutubePlayer_in_WKWebView

class AVViewController: UIViewController, WKYTPlayerViewDelegate {
    
    var arrTable = [""]
    //進入上一頁的表格控制器實體
    weak var avTableViewController:AVTableViewController!
    
    @IBOutlet weak var player: WKYTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrTable = ["X4Y-A8uC6KY", "COKapygU8zc", "rzCBlAucUPk", "hvk91iZ6uJE", "worf7t3_BFU", "_DpMMEWu0W4"]
        
        print("tip_051,\(avTableViewController.currentRow)")
        player.delegate = self
        
//        playerView.playerVars = [
//            "playsinline": "1",
//            "controls": "0",
//            "showinfo": "0",
//            "origin": "https://www.youtube.com"
//        ]
        //==>setting the "origin" parameter for "youtube watch unavailable"
        //player.load(withVideoId: "BSzSn-PRdtI", playerVars: ["origin": "https://www.youtube.com"])
        player.load(withVideoId: arrTable[avTableViewController.currentRow], playerVars: ["origin": "https://www.youtube.com"])
        //player.load(withVideoId: "BSzSn-PRdtI")//K4TOrB7at0Y
        //player.load(withVideoId: "K4TOrB7at0Y")//
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        player.stopVideo()
    }
    //for auto play func
    func playerViewDidBecomeReady(_ playerView: WKYTPlayerView) {
        playerView.playVideo()
    }
}




