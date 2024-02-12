//
//  ViewController.swift
//  UIKitDeco
//
//  Created by N N on 12/02/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView! // Rename imageView + reconnect link
    let images = [
        "img1",
        "img2",
        "img3",
        "img4"
    ]

    @IBOutlet weak var label: UILabel! // Rename descriptionLabel + reconnect link
    let descriptions = [
        "Fauteuil élégant accompagné de son repose pieds jaune orangé",
        "Ce luminaire est tout simplement parfait pour sublimer votre table a manger ou un salon",
        "Chaise blanche de style scandinave",
        "Sofa vert en velou"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonLeft(_ sender: Any) {
        print("Left button pressed")
        // image.image = UIImage(named: )

    }
    
    @IBAction func buttonRight(_ sender: Any) {
        print("Right button pressed")
    }
}

