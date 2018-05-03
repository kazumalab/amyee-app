//
//  SampleViewController.swift
//  amyee
//
//  Created by kazuma on 2018/04/28.
//  Copyright © 2018年 kazuma. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, SecondViewControllerDelegate {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        label.text = "push button"
    }
    
    @IBAction func navClickButton(_ sender: UIButton) {
        guard let rootViewController = storyboard?.instantiateViewController(withIdentifier: "RootViewController") as? RootViewController else {
            return
        }
        navigationController?.pushViewController(rootViewController, animated: true)
    }
    
    @IBAction func clickSecondButton(_ sender: UIButton) {
        guard let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController  else {
            return
        }
        secondViewController.delegate = self
        present(secondViewController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
