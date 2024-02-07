//
//  ViewController.swift
//  SeSACDatabase
//
//  Created by Madeline on 2/7/24.
//

import UIKit
import SeSACUIFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = SeSACPublic()
        
        let b = SeSACOpen()
        
        b.name
        b.welcome()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // 다른 모듈에 들어있는 showAlert -> import해주고, open, pulic 접근제어자로 되어 있는 애들을 갖다 씀
        // 모듈화 -> 이런 맥락임
        showAlert(title: "🚨", message: "삐용삐용", buttonTitle: "알람") { action in
            print("알라미")
        }
    }
}


