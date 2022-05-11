//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Петр Макаров on 09.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    let profile: UILabel = {
        let profile = UILabel(frame: CGRect(x: 175, y: 25, width: 70, height: 70))
        profile.font = UIFont.boldSystemFont(ofSize: 18)
        profile.text = "Profile"
        return profile
    }()
    
    let workingScreen: UIImageView = {
        let workingscreen = UIImageView(frame: CGRect(x: 0, y: 80, width: 600, height: 730))
        workingscreen.backgroundColor = .lightGray
        return workingscreen
    }()
    
    
    
    let catView: UIImageView = {
        let catView = UIImageView(frame: CGRect(x: 16, y: 120, width: 100, height: 100))
        catView.image = UIImage(named: "cat")
        catView.layer.borderWidth = 3
        catView.layer.borderColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1).cgColor
        catView.layer.cornerRadius = 50
        catView.contentMode = .scaleAspectFill
        catView.clipsToBounds = true
        return catView
    }()
    
    let heading: UILabel = {
        var heading = UILabel(frame: CGRect(x: 155, y: 87, width: 200, height: 100))
        heading.font = UIFont.boldSystemFont(ofSize: 18)
        heading.text = "Hipster cat"
        return heading
    }()
    
    let showStatus: UIButton = {
        let showStatus = UIButton(frame: CGRect(x: 16, y: 236, width: 390, height: 60))
        showStatus.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        showStatus.setTitle("Show status", for: .normal)
        showStatus.tintColor = UIColor.white
        showStatus.layer.cornerRadius = 4
        showStatus.layer.shadowOffset = CGSize(width: 4, height: 4)
        showStatus.layer.shadowOpacity = 1.0
        showStatus.layer.shadowColor = UIColor.black.cgColor
        showStatus.backgroundColor = .blue
        return showStatus
    }()
    
    let status: UITextField = {
        let status = UITextField(frame: CGRect(x: 155, y: 172, width: 130, height: 30))
        status.placeholder = "Waiting for something..."
        status.textColor = UIColor.gray
        status.font = UIFont.boldSystemFont(ofSize: 14)
        return status
    }()
    
    
    @objc func statusTextChanged(_ textField: UITextField) {
        restorationIdentifier = status.text
    }
    
    @objc func buttonPressed(sender: UIButton!) {
        heading.text = status.text
        print(heading.text ?? status.placeholder)
    }
    
    
    
    
    override func viewWillLayoutSubviews() {
        view.backgroundColor = .white
        view.addSubview(profile)
        view.addSubview(workingScreen)
        view.addSubview(catView)
        view.addSubview(heading)
        view.addSubview(showStatus)
        view.addSubview(status)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
