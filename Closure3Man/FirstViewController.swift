//
//  ViewController.swift
//  Closure3Man
//
//  Created by Trần Đức Anh on 11/1/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textFieldFirst: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? SecondViewController else {return}
        destination.onCompletion = { (text) in
            self.textFieldFirst.text = text
        }
        
    }
    
    
    
}

