//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Петр Макаров on 09.04.2022.
//

import UIKit

class ProfileHeaderView: UIViewController {
    
    //    Переписал все UI элементы, но пока не задавал Auto layout
    
    private let avatarImageView: UIImageView = {
        let avatarImageView = UIImageView()
        avatarImageView.image = UIImage(named: "cat")
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.clipsToBounds = true
        return avatarImageView
    }()
    
    private let fullNameLabel: UILabel = {
        let fullNameLabel = UILabel()
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        fullNameLabel.text = "Profile"
        return fullNameLabel
    }()
    
    private let statusLabel: UILabel = {
        var statusLabel = UILabel()
        statusLabel.font = UIFont.boldSystemFont(ofSize: 18)
        statusLabel.text = "Hipster cat"
        return statusLabel
    }()
    
    private let statusTextField: UITextField = {
        let statusTextField = UITextField()
        statusTextField.placeholder = "Waiting for something..."
        statusTextField.textColor = UIColor.gray
        statusTextField.font = UIFont.boldSystemFont(ofSize: 14)
        return statusTextField
    }()
}
