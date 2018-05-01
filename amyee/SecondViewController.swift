//
//  SecondViewController.swift
//  amyee
//
//  Created by kazuma on 2018/05/02.
//  Copyright © 2018年 kazuma. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    weak var delegate: SecondViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.secondViewController(self, didTapButton: sender)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol SecondViewControllerDelegate: class {
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton)
}
