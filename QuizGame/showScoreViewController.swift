//
//  showScoreViewController.swift
//  QuizGame
//
//  Created by NhatThanh on 4/1/18.
//  Copyright © 2018 NhatThanh. All rights reserved.
//

import UIKit

class showScoreViewController: UIViewController {
    //Label
    @IBOutlet weak var lblPoints: UILabel!
    
    //Variable
    var pointsFromVC = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPoints.text  = String(pointsFromVC)

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
