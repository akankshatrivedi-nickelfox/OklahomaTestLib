//
//  NewViewController.swift
//  
//
//  Created by Akanksha Trivedi on 09/02/23.
//

import UIKit

public protocol NewViewControllerDelegate {
    func tryThisButtonHit(statement: String)
}

public class NewViewController: UIViewController {

    @IBOutlet weak var tryThisButton: UIButton!
    
    public init() {
        super.init(nibName: "NewViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public var delegate: NewViewControllerDelegate?
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tryThisButtonAction(_ sender: UIButton) {
        // TODO: Protocol call
        self.delegate?.tryThisButtonHit(statement: "button pressed inside package manager")
    }
}
