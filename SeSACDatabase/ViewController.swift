//
//  ViewController.swift
//  SeSACDatabase
//
//  Created by Madeline on 2/7/24.
//

import UIKit
import SeSACUIFramework

class ViewController: UIViewController {

    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nicknameButtonTapped(_ sender: UIButton) {
        let viewController = DetailViewController()
        // 기존 값전달 방법
//        viewController.nicknameSpace = "홈런볼"
        
        // 클로저
        viewController.nicknameSpace = { value in
            // value(String) -> Void
            self.nicknameLabel.text = value
        }
        
        present(viewController, animated: true)
    }
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        
    }
}


