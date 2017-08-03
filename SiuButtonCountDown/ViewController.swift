//
//  ViewController.swift
//  SiuButtonCountDown
//
//  Created by Estronger on 2017/8/3.
//  Copyright © 2017年 Siu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func doAction(_ sender: UIButton) {
        
         button.startCountdown(startTime: 10, startButtonColor: .clear, startButtonBorderColor: .black, startTitleColor:.white, countDownTitle: "Get the Code", countDownButtonColor: .clear, countDownButtonBorderColor: .clear, countDownTitleColor: .white)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

