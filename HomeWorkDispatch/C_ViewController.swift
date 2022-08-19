//
//  C_ViewController.swift
//  HomeWorkDispatch
//
//  Created by Igor Frik on 20.08.2022.
//

import UIKit

class C_ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func run(_ sender: Any) {
        guard let number = Int(numberTextField.text!) else { return }
        DispatchQueue.global(qos: .background).async {
            var array = [1]
            let startTime = Date()
            for i in 1...number {
                if i > 1 && !(2..<i).contains(where: { i % $0 == 0 }) { array.append(i)}
            }
            let overallTime = Date()
            print("Найдено \(array.count) простых чисел: \(array)")
            print("Всего за \(String(format: "%.1f", overallTime.timeIntervalSince(startTime))) c.")
        }
    }
}
