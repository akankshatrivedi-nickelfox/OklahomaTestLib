//
//  NewViewController.swift
//  
//
//  Created by Akanksha Trivedi on 09/02/23.
//

import UIKit

protocol NewViewControllerDelegate {
    func tryThisButtonHit(statement: String)
}

class NewViewController: UIViewController {

    @IBOutlet weak var tryThisButton: UIButton!
    
    weak var delegate: NewViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tryThisButtonAction(_ sender: UIButton) {
        // TODO: Protocol call
        self.delegate?.tryThisButtonHit(statement: "button pressed inside package manager")
    }
}
