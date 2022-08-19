//
//  ViewController.swift
//  HomeWorkDispatch
//
//  Created by Igor Frik on 19.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var aImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.global(qos: .background).async { [weak self] in
            let image = UIImage(data: try! Data(contentsOf: URL(string: "https://img2.joyreactor.cc/pics/post/never-gonna-give-you-up-rickroll-6650260.jpeg")!))
            DispatchQueue.main.async { [weak self] in
                self?.aImageView.image = image
            }
        }
    }
}

