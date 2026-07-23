//
//  ViewController.swift
//  newProject
//
//  Created by Ketham Vamsi on 09/04/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        let imageView = UIImageView(image: UIImage(named: "Login"))
                imageView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 410)
                imageView.contentMode = .scaleAspectFill
                imageView.backgroundColor = UIColor.white
                self.view.addSubview(imageView)
        
        
        let loginLabel = UILabel(frame: CGRect(x: 20, y: 420, width: 200, height: 40))
                loginLabel.text = "Login"
                loginLabel.textColor = UIColor.black
                loginLabel.font = UIFont.systemFont(ofSize: 35, weight: .bold)
                self.view.addSubview(loginLabel)
        
        let imageview1 = UIImageView(image: UIImage(named: "email"))
        imageview1.frame = CGRect(x: 8, y: 490, width: 20, height: 20)
        imageview1.contentMode = .scaleAspectFill
        self.view.addSubview(imageview1)
        
        let emailTextField = UITextField(frame: CGRect(x: 34, y: 478, width: 330, height: 45))
        emailTextField.placeholder = "Email"
        emailTextField.textColor = UIColor.black
        emailTextField.addBottomLine()
        self.view.addSubview(emailTextField)
        
        let imageview2 = UIImageView(image: UIImage(named: "password"))
        imageview2.frame = CGRect(x: 8, y: 535, width: 20, height: 20)
        imageview2.contentMode = .scaleAspectFill
        self.view.addSubview(imageview2)
        
        let passwordTextField = UITextField(frame: CGRect(x: 34, y: 526, width: 330, height: 40))
        passwordTextField.placeholder = "password"
        passwordTextField.addBottomLine()
        self.view.addSubview(passwordTextField)
        
        let forgotButton = UIButton(frame: CGRect(x: 240, y: 526, width: 200, height: 40))
        forgotButton.setTitle("forgot?", for: .normal)
        forgotButton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(forgotButton)
        
        
        let loginButton = UIButton(frame: CGRect(x: 20, y: 605, width: self.view.bounds.width - 40, height: 45))
        loginButton.layer.cornerRadius = 10
        loginButton.backgroundColor = .blue
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)

        self.view.addSubview(loginButton)
        
        let labelWidth: CGFloat = 50
        let orLabel = UILabel(frame: CGRect(x: (self.view.bounds.width - labelWidth) / 2,y: 670,width: labelWidth,height: 40))
        orLabel.text = "or"
        //orLabel.textColor = .black
        orLabel.textAlignment = .center
        orLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        let leftLine = UIView(frame: CGRect(
            x: 20,
            y: 690,
            width: orLabel.frame.minX - 30,
            height: 1
        ))
        leftLine.backgroundColor = .lightGray

        // Right Line
        let rightLine = UIView(frame: CGRect(
            x: orLabel.frame.maxX + 10,
            y: 690,
            width: self.view.bounds.width - (orLabel.frame.maxX + 30),
            height: 1
        ))
        rightLine.backgroundColor = .lightGray
        
        self.view.addSubview(orLabel)
        self.view.addSubview(leftLine)
        self.view.addSubview(rightLine)
        
        
        
    let imageview3 = UIImageView(image: UIImage(named: "google"))
        imageview3.frame = CGRect(x: 70, y:730, width: 35, height: 35)
        imageview3.contentMode = .scaleAspectFill
        self.view.addSubview(imageview3)
        
        let loginandgoogleLabel = UILabel(frame: CGRect(x: 80, y: 740, width: 200, height: 20))
        loginandgoogleLabel.text = "Login with Google"
        loginandgoogleLabel.textAlignment = .center
        loginandgoogleLabel.font = UIFont.boldSystemFont(ofSize: 14)
        self.view.addSubview(loginandgoogleLabel)
        
        
        let designLabel = UILabel(frame: CGRect(x: 60, y: 800, width: 200, height: 20))
        designLabel.text = "New to Design?"
        designLabel.textAlignment = .center
        designLabel.font = UIFont.boldSystemFont(ofSize: 14)
        self.view.addSubview(designLabel)
        
        let signbutton = UIButton(frame: CGRect(x: 150, y: 800, width: 200, height: 20))
        signbutton.setTitle("Sign UP", for: .normal)
        signbutton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(signbutton)
        
        
        // Do any additional setup after loading the view.
    }
   @objc func loginTapped() {
        let moviesVC = MoviesViewController()
        self.navigationController?.pushViewController(moviesVC, animated: true)
    }

}

extension UITextField{
    func addBottomLine(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.height-1, width: self.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        layer.addSublayer(bottomLine)
    }
}


