//
//  ViewController.swift
//  Remote
//
//  Created by Kevin Fang on 3/2/17.
//
//

import UIKit
import Firebase
class ViewController: UIViewController {

    @IBAction func left(_ sender: Any) {
        ref.child("move").setValue("left")
    }
    
    @IBAction func right(_ sender: Any) {
        ref.child("move").setValue("right")
    }
    
    @IBAction func up(_ sender: Any) {
        ref.child("move").setValue("up")
    }
    
    @IBAction func down(_ sender: Any) {
        ref.child("move").setValue("down")
    }
    
    var ref:FIRDatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = FIRDatabase.database().reference()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

