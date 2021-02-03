//
//  ViewController.swift
//  easeInOut
//
//  Created by Shogo Nobuhara on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var azarashi: UIImageView!
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        
        // タップされた座標を調べる
        let tapPoint = sender.location(in: view)
        
        // 指定したアニメーションする
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       options: [.curveEaseInOut],
                       animations: {
                        // タップした座標に移動
                        self.azarashi.center = tapPoint
                       },
                       completion: nil
                       )
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

