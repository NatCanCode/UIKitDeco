//
//  ViewController.swift
//  UIKitDeco
//
//  Created by N N on 12/02/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let images = [
        "img1",
        "img2",
        "img3",
        "img4"
    ]
    let descriptions = [
        "Fauteuil élégant accompagné de son repose pieds jaune orangé",
        "Ce luminaire est tout simplement parfait pour sublimer votre table a manger ou un salon",
        "Chaise blanche de style scandinave",
        "Sofa vert en velour"
    ]

    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        UIView.transition(with: imageView,
                                  duration: 0.5,
                                  options: .transitionCrossDissolve,
                                  animations: {
                                      self.imageView.image = UIImage(named: self.images[self.currentIndex])
                                  },
                                  completion: nil)
        descriptionLabel.text = descriptions[currentIndex]
    }

    @IBAction func buttonLeft(_ sender: UIButton) {
        print("Left button pressed")
        currentIndex = (currentIndex - 1 + images.count) % images.count
        updateUI()
    }
    
    @IBAction func buttonRight(_ sender: UIButton) {
        print("Right button pressed")
        currentIndex = (currentIndex + 1) % images.count
        updateUI()
    }
}

