//
//  YellowViewController.swift
//  WedProj
//
//  Created by SDS-018 on 2017. 4. 26..
//  Copyright © 2017년 SDS-018. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    
    @IBOutlet var uiText: UITextField!
    
    
    @IBAction func done(_ sender: Any) {
        if let myDelegate = delegate, let myStr = uiText.text {
            myDelegate.sendText(newText: myStr)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    var delegate: MudViewController? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func changeBackColor(_ f:(UIColor) -> ()){
        f(UIColor.cyan)
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
