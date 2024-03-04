//
//  ViewController.swift
//  SnapKit Task
//
//  Created by Fawaz Alzamel on 27/02/2024.
//

import UIKit
import SnapKit


let profileImageView = UIImageView()
let verifyImageView = UIImageView()
let usernameLabel = UILabel()
let fullNameLabel = UILabel()
let bioLabel = UILabel()

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(profileImageView)
        view.addSubview(verifyImageView)
        view.addSubview(fullNameLabel)
        view.addSubview(usernameLabel)
        view.addSubview(bioLabel)
        
        setupUI()
        
        
        
    }
    
    func setupUI() {
        profileImageView.image = UIImage(named: "Codedpic")
        verifyImageView.image = UIImage(named: "instaVery")
        usernameLabel.text = "CODED"
        fullNameLabel.text = "joincoded"
        bioLabel.text = "🥇 1st Coding Academy in the Middle East \n\n 🧑🏻‍💻 Learn to Code Websites, Apps, & MORE\n\n 🧑🏻‍🎓 Intensive Courses & BootCamps \n\n 🚀 1,500+ Graduates Since 2015"
        
        // Setting number of lines for labels
        
        profileImageView.layer.cornerRadius = 75/2
        profileImageView.clipsToBounds = true
        
        bioLabel.numberOfLines = 0
        
        
        verifyImageView.snp.makeConstraints { make in
                    make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
                    make.trailing.equalToSuperview().offset(-50)
                    make.width.height.equalTo(20)
                    
                        
                    
                }
        
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.width.height.equalTo(75)
                
            
        }
        
        
        
        
        
        // Username Label Constraints
        usernameLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.centerY).offset(-20)
            make.leading.equalToSuperview().offset(20)
            usernameLabel.font = UIFont.boldSystemFont(ofSize: 35)
            
        }
        
        //full name constraints
        
        fullNameLabel.snp.makeConstraints { make in
            make.top.equalTo(usernameLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
        }

        // Bio Label Constraints
        bioLabel.snp.makeConstraints { make in
            make.top.equalTo(fullNameLabel.snp.bottom).offset(30)
            make.leading.equalTo(fullNameLabel.snp.leading)
        }
    }
    
   

    

}



