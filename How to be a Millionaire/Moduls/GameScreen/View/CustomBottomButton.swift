//
//  CustomBottomButton.swift
//  How to be a Millionaire
//
//  Created by deshollow on 28.02.2024.
//

import UIKit
import SnapKit

final class CustomBottomButton: UIButton {
    
    let helpButtonImage: UIImageView = {
        let element = UIImageView()
        element.contentMode = .scaleToFill
        element.image = UIImage(named: "callFriendImage")
        element.clipsToBounds = true
        return element
    }()
    
    init(image: String) {
        super.init(frame: .zero)
        self.helpButtonImage.image = UIImage(named: image)
        
        setupView()
        setupConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.addSubview(helpButtonImage)
    }
    
    private func setupConstraints() {
        helpButtonImage.snp.makeConstraints { make in
            make.width.equalTo(107)
            make.height.equalTo(83)
        }
    }
}

//done for custom button
