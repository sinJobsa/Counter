//
//  ViewController.swift
//  Counter
//
//  Created by Mag Abd on 25.02.2024.
//

import SwiftUI

class ViewController: UIViewController {
    @IBOutlet weak var historyField: UITextView!
    @IBOutlet weak var makeCntZero: UIButton!
    @IBOutlet weak var bottonCounterMinus: UIButton!
    @IBOutlet weak var bottonCounterPlus: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    var count = 0
    var todayDate = Date()
    @IBAction func bottonDidTap(_ sender: Any) {
        count += 1
        textLabel.text = "Значение счётчика: \(count)"
        var dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        var dateString = dateFormatter.string(from: todayDate)
        historyField.text = "\(dateString) - Значение изменено на +1"
    }
    @IBAction func bottondDidTapMinus(_ sender: Any) {
        if count > 0 {
            count -= 1
            var dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            dateFormatter.timeStyle = .short
            dateFormatter.locale = Locale(identifier: "ru_Ru")
            var dateString = dateFormatter.string(from: todayDate)
            historyField.text = "\(dateString) - Значение изменено на -1"
        } else {
            count = 0
            var dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            dateFormatter.timeStyle = .short
            dateFormatter.locale = Locale(identifier: "ru_Ru")
            var dateString = dateFormatter.string(from: todayDate)
            historyField.text = "\(dateString) - Попытка уменьшить значение счётчика ниже 0"
        }
        textLabel.text = "Значение счётчика: \(count)"
    }
    @IBAction func makeCntZeroAction(_ sender: Any) {
        count = 0
        textLabel.text = "Значение счётчика: \(count)"
        var dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        var dateString = dateFormatter.string(from: todayDate)
        historyField.text = "\(dateString) - Значение изменено на 0"
    }
}

