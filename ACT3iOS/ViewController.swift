//
//  ViewController.swift
//  ACT3iOS
//
//  Created by Maricarmen Pedro on 19/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    var redcolor: CGFloat = 0.0
    var greencolor: CGFloat = 0.0
    var bluecolor: CGFloat = 0.0
    var alpha: CGFloat = 1.0

    @IBOutlet weak var stitch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func red(_ sender: UISlider) {
        redcolor = CGFloat (sender.value);updateColor()
    }
    
    @IBAction func green(_ sender: UISlider) {
        greencolor = CGFloat (sender.value);updateColor()
    }
    
    
    @IBAction func blue(_ sender: UISlider) {
        bluecolor = CGFloat (sender.value);updateColor()
    }
    
    @IBAction func transparent(_ sender: UISlider) {
        alpha = CGFloat (sender.value);updateColor()
    }
    
    func updateColor (){
        stitch.backgroundColor = UIColor (red: redcolor, green: greencolor, blue: bluecolor, alpha: alpha)
    }
    
}

