//
//  CustomTableViewCell.swift
//  Navigation
//
//  Created by Петр Макаров on 12.05.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    private let whiteView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
        return $0
    }(UIView())
    
    private let postView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .black
        $0.contentMode = .scaleAspectFit
        return $0
    }(UIImageView())
    
    private let nameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "test autor "
        $0.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return $0
    }(UILabel())
    
    private let descriptionLabel: UILabel = {
        $0.textColor = .systemGray
        $0.font = .systemFont(ofSize: 24)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    private var likes: UILabel = {
        let likes = UILabel()
        likes.translatesAutoresizingMaskIntoConstraints = false
        likes.font = .systemFont(ofSize: 16, weight: .medium)
        likes.textColor = .black
        return likes
    }()
    
    private let views: UILabel = {
        let views = UILabel()
        views.translatesAutoresizingMaskIntoConstraints = false
        views.font = .systemFont(ofSize: 16, weight: .medium)
        views.textColor = .black
        return views
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(_ model: PostModel) {
        postView.image = model.image
        nameLabel.text = model.author
        likes.text = "Likes: \(model.likes)"
        views.text = "Views: \(model.views)"
        descriptionLabel.text = model.description
    }
    
    private func layout() {
        [whiteView, postView, nameLabel, descriptionLabel, likes, views].forEach { contentView.addSubview($0) }
        
        
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            whiteView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            whiteView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            whiteView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            
            nameLabel.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -16),
            nameLabel.bottomAnchor.constraint(equalTo: postView.topAnchor, constant: -16),
            
            postView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            postView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor),
            postView.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor),
            postView.heightAnchor.constraint(equalToConstant: 250),
            
            descriptionLabel.topAnchor.constraint(equalTo: postView.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -16),
            
            likes.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            likes.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 16),
            likes.heightAnchor.constraint(equalToConstant: 50),
            likes.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor),
            
            views.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            views.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -16),
            views.heightAnchor.constraint(equalToConstant: 50),
            views.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor)
        ])
        
    }
    
}



