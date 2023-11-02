//
//  MainViewController.swift
//  gradient and shadow
//
//  Created by Evgenii Mazrukho on 02.11.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    
    //MARK: - UI
    private let boxView = BoxView()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    //MARK: - Methods
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(boxView)
    }
}

//MARK: - Constraints
extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            boxView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            boxView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            boxView.heightAnchor.constraint(equalToConstant: 150),
            boxView.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}

