//
//  CompactViewController.swift
//  Simple Notes
//
//  Created by Dameon Green on 8/7/17.
//  Copyright © 2017 ApptasticVoyage. All rights reserved.
//

import UIKit

protocol CompactDelegate {
    func newNote()
}

class CompactViewController: UIViewController {
    
    var delegate:CompactDelegate?
    
    
    @IBAction func createNewNote(_ sender: Any) {
        
        delegate?.newNote()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
