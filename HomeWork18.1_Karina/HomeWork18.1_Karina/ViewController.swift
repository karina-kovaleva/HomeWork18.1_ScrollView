//
//  ViewController.swift
//  HomeWork18.1_Karina
//
//  Created by Karina Kovaleva on 6.09.22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if (scrollView.contentOffset.y + 0.1) >= (scrollView.contentSize.height - scrollView.frame.size.height) {
            firstTextField.becomeFirstResponder()
          }
    }

}

