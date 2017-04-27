//
//  PurpleViewController.swift
//  WedProj
//
//  Created by SDS-018 on 2017. 4. 26..
//  Copyright © 2017년 SDS-018. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {

    var myStr: String? = nil
    
    @IBOutlet var purpleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        if let str = myStr{
    
            purpleLabel.text = str
        }
        
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate{
            purpleLabel.text = appDelegate.myName
        }
        
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
