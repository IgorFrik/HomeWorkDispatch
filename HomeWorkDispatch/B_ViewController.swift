//
//  B_ViewController.swift
//  HomeWorkDispatch
//
//  Created by Igor Frik on 20.08.2022.
//

import UIKit

class B_ViewController: UIViewController {

    @IBOutlet weak var bImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        blurEffectView.frame = bImageView.frame
        
        DispatchQueue.global(qos: .background).async { [weak self] in
            let image = UIImage(data: try! Data(contentsOf: URL(string: "https://imgs.smoothradio.com/images/191589?width=1200&crop=1_1&signature=KHg-WnaLlH9KsZwE-qYgxTkaSpU=")!))
            DispatchQueue.main.async { [weak self] in
                self?.bImageView.addSubview(blurEffectView)
                self?.bImageView.image = image
            }
        }
    }

}
