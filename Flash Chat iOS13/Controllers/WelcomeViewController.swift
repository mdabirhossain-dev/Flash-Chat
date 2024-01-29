//
// FileName: WelcomeViewController.swift
// ProjectName: Clima
//
// Created by MD ABIR HOSSAIN on 27-12-2023 at 12:25 AM
// Website: https://mdabirhossain.com/
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = Constants.appName
        
        
        // MARK: - For custom animation
//        titleLabel.text = ""
//        var chartIndex = 0.0
//        let titleText = "⚡️FlashChat"
//
//        for title in titleText {
//            Timer.scheduledTimer(withTimeInterval: 0.15 * chartIndex, repeats: false) { timer in
//                self.titleLabel.text?.append(title)
//            }
//
//            chartIndex += 1
//        }
    }
    

}
