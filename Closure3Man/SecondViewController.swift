//
//  SecondViewController.swift
//  Closure3Man
//
//  Created by Trần Đức Anh on 11/1/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textFieldSecond: UITextField!
    var onCompletion: ((String) -> Void)?
    var data = Data()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showSecond(_ sender: Any) {
        onCompletion?(textFieldSecond.text ?? "")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? LastViewController else {return}
       destination.onCompletion = onCompletion
        
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
