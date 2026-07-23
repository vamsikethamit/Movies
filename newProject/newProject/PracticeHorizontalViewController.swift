//
//  PracticeHorizontalViewController.swift
//  newProject
//
//  Created by Ketham Vamsi on 15/04/26.
//

import UIKit

class PracticeHorizontalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.distribution = .fill

        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        let imageView = UIImageView(image: UIImage(named: "show1"))
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true

        let nameLabel = UILabel()
        nameLabel.text = "Vamsi"
        nameLabel.textColor = .gray
        nameLabel.font = .boldSystemFont(ofSize: 20)

        let subtitleLabel = UILabel()
        subtitleLabel.text = "iOS Developer"
        subtitleLabel.textColor = .gray

        let button = UIButton()
        button.setTitle("Follow", for: .normal)
        button.backgroundColor = .systemBlue

        // Add to stack
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(subtitleLabel)
        stackView.addArrangedSubview(button)

        // Do any additional setup after loading the view.
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
