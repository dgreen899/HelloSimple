//
//  ExpandedViewController.swift
//  Simple Notes
//
//  Created by Dameon Green on 8/7/17.
//  Copyright © 2017 ApptasticVoyage. All rights reserved.
//

import UIKit

protocol ExpandedDelegate {
    
    func sendMessage(title:String,note: String)
    func saveMessage(title:String,note: String)
}

class ExpandedViewController: UIViewController {

    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtNote: UITextView!
    
    @IBAction func sendMessage(_ sender: Any) {
        
        delegate?.sendMessage(title: txtTitle.text!, note: txtNote.text!)
        
    }
    
    
    @IBAction func saveMessage(_ sender: Any) {
        
        delegate?.saveMessage(title: txtTitle.text!, note: txtNote.text!)
    }
    
    var delegate:ExpandedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clearText() {
        txtNote.text = "Note"
        txtTitle.text = ""
    }
    

    func didOpen(from url:URL) {
        let components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
        for item in components.queryItems! {
            if item.name == "title" {
                txtTitle.text = item.value
            }
            else if item.name == "note" {
                txtNote.text = item.value
            }
        }
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
