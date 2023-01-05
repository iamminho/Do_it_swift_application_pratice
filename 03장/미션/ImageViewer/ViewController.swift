//
//  ViewController.swift
//  ImageViewer
//
//  Created by 이민호 on 2023/01/05.
//

import UIKit

class ViewController: UIViewController {
    var currentImage = 1
    var maxImage = 6
    var minImage = 1

    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var prevBtn: UIButton!
    @IBOutlet weak var imgGallery: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgGallery.image = UIImage(named: "1.png")
    }
    
    @IBAction func btnPrevImage(_ sender: UIButton) {
        currentImage -= 1
        if (currentImage < minImage) {
            currentImage = maxImage
        }
        
        let imageName = String(currentImage) + ".png"
        imgGallery.image = UIImage(named: imageName)
    }
    
    
    @IBAction func btnNextImage(_ sender: UIButton) {
        currentImage += 1
        if (currentImage > maxImage) {
            currentImage = minImage
        }

        let imageName = String(currentImage) + ".png"
        imgGallery.image = UIImage(named: imageName)
    }
}
