//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Esra Arı on 29.03.2025.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    
    @IBOutlet weak var landmarkImage: UIImageView!
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        landmarkLabel.text = selectedLandmarkName
        landmarkImage.image = selectedLandmarkImage

      
    }
    

 

}
