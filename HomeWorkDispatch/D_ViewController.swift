//
//  D_ViewController.swift
//  HomeWorkDispatch
//
//  Created by Igor Frik on 20.08.2022.
//

import UIKit

class LetMeDoIt {
    let serialQueue = DispatchQueue(label: "personal.serial.background", qos: .background)
    

    func addIt(_ new: ()) {
        serialQueue.sync {
            new
        }
    }
}

class D_ViewController: UIViewController {
    
    var count = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func test() {
            let number = count
            var array = [1]
            for i in 2...number {
                if i > 1 && !(2..<i).contains(where: { i % $0 == 0 }) { array.append(i)}
            }
            print("Найдено \(array.count) простых чисел: \(array)")
            self.count *= 10
        }
        
        let a = LetMeDoIt()
        a.addIt(test())
        a.addIt(test())
        a.addIt(test())
        a.addIt(test())
        a.addIt(test())
    }
}
