//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Andrew  on 10/7/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var splitNumber = 0
    var tips = 0.0
    var finalResult = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = finalResult
        settingsLabel.text = "Split between \(splitNumber) people, with \(tips) tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
