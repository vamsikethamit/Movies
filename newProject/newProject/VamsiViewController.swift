//
//  VamsiViewController.swift
//  newProject
//
//  Created by Ketham Vamsi on 09/06/26.
//

import UIKit


protocol SendDataBack {
    func sendDataBack(data: String)
}

class VamsiViewController: UIViewController {
    
    let titleLabel = UILabel()
    var nameString = "eeeee"
    
    
    var delegate: SendDataBack?

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        titleLabel.frame = CGRect(x: 50, y: 300, width: 200, height: 40)
        
        // Label text
                

                // Text color
                titleLabel.textColor = .white
        
        titleLabel.backgroundColor = .yellow

                // Font size
                titleLabel.font = UIFont.systemFont(ofSize: 24)

                // Label position and size
                

                // Add label to the view
                view.addSubview(titleLabel)
        
        
        
        let button = UIButton.init(frame: CGRect(x: 100, y: 500, width: 200, height: 40))
        button.titleLabel?.text = "Go Back"
        button.backgroundColor = .blue
        button.addTarget(
            self,
            action: #selector(buttonTapped),
            for: .touchUpInside
        )
        self.view.addSubview(button)
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @objc func buttonTapped() {
        
        self.delegate?.sendDataBack(data: "hello")
        self.dismiss(animated: true)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        titleLabel.text = nameString
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
