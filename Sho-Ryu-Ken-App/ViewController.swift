//
//  ViewController.swift
//  Sho-Ryu-Ken-App
//
//  Created by 高橋康之 on 2021/10/31.
//

import UIKit

class ViewController: UIViewController {
    
    let imageName = ["attak1"]
    var imageNum = 0
    
    // 攻撃用配列
    var imageArrayAttak : Array<UIImage> = []
    @IBOutlet weak var charaImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = imageName[imageNum]
        let attak = UIImage(named: image)
        charaImage.image = attak
        // 配列に画像を格納する関数の呼び出し
        kakunou()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func attackBtn(_ sender: Any) {
        // アニメーションの適用
        charaImage.animationImages = imageArrayAttak
        // 1秒間隔
        charaImage.animationDuration = 1
        // 1回繰り返し
        charaImage.animationRepeatCount = 1
        // アニメーションを開始
        charaImage.startAnimating()
    }
    
    // 画像の格納関数
    func kakunou() {
        while let attakImage = UIImage(named: "attak\(imageArrayAttak.count+1)") {
            print(attakImage)
            imageArrayAttak.append(attakImage)
        }
    }
    
}
