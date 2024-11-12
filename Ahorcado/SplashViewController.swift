//
//  SplashViewController.swift
//  Ahorcado
//
//  Created by imac on 12/11/24.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var imvLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let w = view.frame.width * 0.9
        let h = w * 1
        let x = (view.frame.width - w)/2
        let y = -h
        
        imvLogo.alpha = 0.0
        imvLogo.frame = CGRect(x: x, y: y, width: w, height: h)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 3.0) {
            let y = (self.view.frame.height - self.imvLogo.frame.height) / 2.0
            self.imvLogo.frame.origin.y = y
            self.imvLogo.alpha = 1.0
        }completion: { comp in
            self.performSegue(withIdentifier: "SgSplash", sender: nil)
        }

    }

  

}
