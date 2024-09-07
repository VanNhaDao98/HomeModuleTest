//
//  BaseViewController.swift
//  
//
//  Created by Dao Van Nha on 07/09/2024.
//

import UIKit

open class BaseViewController: UIViewController {
    

    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    open override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
    }

}
