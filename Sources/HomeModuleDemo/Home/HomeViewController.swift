//
//  HomeViewController.swift
//  
//
//  Created by Dao Van Nha on 07/09/2024.
//

import UIKit
import SnapKit

public protocol HomeDelegate: AnyObject {
    func homeAction(home: HomeModel)
}

public class HomeViewController: BaseViewController {
    
    private var button = UIButton()
    
    private var viewModel: HomeViewModel
    
    public weak var delegate: HomeDelegate?
    
    public init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(button)
        button.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        button.setTitle("ButtonTap", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
    }
    
    @objc
    private func buttonTap() {
        delegate?.homeAction(home: .init(name: "HomeScreen"))
    }

}

public class HomeModel {
    public var name: String
    
    public init(name: String) {
        self.name = name
    }
}
