//
//  CustomTableViewCell.swift
//  SelfSizingTableViewCell
//
//  Created by 방유빈 on 2023/03/20.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    var imgView:UIImageView!
    var titleLabel:UILabel!
    var postLabel :UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(imgView)
        
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.preferredFont(forTextStyle: .title2)
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.textColor = .black
        
        postLabel = UILabel()
        postLabel.translatesAutoresizingMaskIntoConstraints = false
        postLabel.font = UIFont.preferredFont(forTextStyle: .body)
        postLabel.adjustsFontForContentSizeCategory = true
        postLabel.textColor = .darkGray
        postLabel.numberOfLines = 0
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, postLabel])
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 8
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            imgView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imgView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imgView.widthAnchor.constraint(equalTo: imgView.heightAnchor),
            imgView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.2),
            imgView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 8),
            stackView.topAnchor.constraint(equalTo: imgView.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
