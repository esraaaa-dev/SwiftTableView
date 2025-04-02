//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Esra Arı on 29.03.2025.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var choosenLandmarkName = ""
    var choosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Hierapolis")
        landmarkNames.append("Iguazu")
        landmarkNames.append("Machu Picchu")
        landmarkNames.append("Petra")
        landmarkNames.append("Phuket")
        landmarkNames.append("Venice")
        
        
        landmarkImages.append(UIImage(named: "colosseum")!)
        landmarkImages.append(UIImage(named: "hierapolis")!)
        landmarkImages.append(UIImage(named: "iguazu")!)
        landmarkImages.append(UIImage(named: "machuPicchu")!)
        landmarkImages.append(UIImage(named: "petra")!)
        landmarkImages.append(UIImage(named: "phuket")!)
        landmarkImages.append(UIImage(named: "venice")!)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenLandmarkName = landmarkNames[indexPath.row]
        choosenLandmarkImage = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destVC = segue.destination as! DetailsVC
            destVC.selectedLandmarkName = choosenLandmarkName
            destVC.selectedLandmarkImage = choosenLandmarkImage
         
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


}

