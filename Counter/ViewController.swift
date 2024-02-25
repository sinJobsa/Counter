//
//  ViewController.swift
//  Counter
//
//  Created by Mag Abd on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottonCounterPlus: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var cnt = 0
    @IBAction func bottonDidTap(_ sender: Any) {
        cnt += 1
        textLabel.text = "Значение счётчика: \(cnt)"
    }
}

