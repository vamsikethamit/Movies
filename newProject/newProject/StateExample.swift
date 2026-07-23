//
//  StateExample.swift
//  newProject
//
//  Created by Ketham Vamsi on 21/05/26.
//

import UIKit

class StateExample: UIViewController {

    var count = 0

       let label = UILabel()
       let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        label.text = "Count: 0"
               label.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
               label.font = UIFont.systemFont(ofSize: 24)

               // Button setup
               button.setTitle("Increase", for: .normal)
               button.frame = CGRect(x: 100, y: 300, width: 120, height: 50)

               // Button action
               button.addTarget(self,
                                action: #selector(increaseCount),
                                for: .touchUpInside)
        // Do any additional setup after loading the view.
        view.addSubview(label)
        view.addSubview(button)
        
        
        
    }
    
    @objc func increaseCount() {

           count += 1
        
           
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
