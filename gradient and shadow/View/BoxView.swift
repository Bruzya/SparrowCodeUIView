//
//  BoxView.swift
//  gradient and shadow
//
//  Created by Evgenii Mazrukho on 02.11.2023.
//

import UIKit

final class BoxView: UIView {
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        addGradient()
    }
    
    //MARK: - Methods
    private func setupViews() {
        addShadow()
        layer.cornerRadius = 20
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addShadow(scale: Bool = true) {
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 5.0, height: 10.0)
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 5.0
    }

    private func addGradient() {
        let topColor = UIColor.blue.cgColor
        let bottomColor = UIColor.red.cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = layer.cornerRadius
        gradientLayer.colors = [topColor, bottomColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        layer.addSublayer(gradientLayer)
    }
}
