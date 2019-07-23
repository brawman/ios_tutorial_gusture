//
//  ViewController.swift
//  gusture
//
//  Created by Hue Woon Kim on 24/07/2019.
//  Copyright © 2019 Hue Woon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    let touch = touches.first!
        let point = touch.location(in:self.view)
        print("touch point : \(point)")
        let gestrue = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
        redview.addGestureRecognizer(gestrue)
        
    }
    
    @IBAction func handleRotate(_ sender: Any) {
        print("handleRotate")
    }
    @objc func handlePinch(_ gesture : UIPinchGestureRecognizer) {
        let scale = gesture.scale
        let newTr = redview.transform.scaledBy(x: scale, y: scale)
        redview.transform = newTr
        gesture.scale = 1.0
    }
}

