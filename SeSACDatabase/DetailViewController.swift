//
//  DetailViewController.swift
//  SeSACDatabase
//
//  Created by Madeline on 2/7/24.
//

import SnapKit
import UIKit

class DetailViewController: UIViewController {
    
    let inputTextField = UITextField()
    let okButton = UIButton()
    
    // 기존 값전달 방법
//    var nicknameSpace: String = "쿠크다스"

    // 클로저
    var nicknameSpace: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemOrange
        
        view.addSubview(inputTextField)
        view.addSubview(okButton)
        
        inputTextField.placeholder = "내용을 입력해주세요"
        inputTextField.backgroundColor = .white
        okButton.setTitle("OK", for: .normal)
        okButton.addTarget(self, action: #selector(okButtonTapped), for: .touchUpInside)
        
        inputTextField.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        okButton.snp.makeConstraints { make in
            make.top.equalTo(inputTextField.snp.bottom)
            make.size.equalTo(50)
            make.centerX.equalTo(view)
        }
    }
    
    @objc func okButtonTapped() {
        
        nicknameSpace?(inputTextField.text!)
        
        dismiss(animated: true)
    }

}
