//
//  ViewController.swift
//  FusumaDemo
//
//  Created by Kubilay Erdogan on 13.06.2018.
//  Copyright © 2018 @kublaios. All rights reserved.
//

import UIKit
import Fusuma

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addImageTapped(_ sender: Any) {
        let fusuma = FusumaViewController()
        fusuma.delegate = self
        self.present(fusuma, animated: true, completion: nil)
    }
    
}

// MARK: FusumaDelegate
extension ViewController: FusumaDelegate
{
    func fusumaImageSelected(_ image: UIImage, source: FusumaMode) {
        self.imageView?.image = image
    }
    
    func fusumaMultipleImageSelected(_ images: [UIImage], source: FusumaMode) {
    }
    
    func fusumaVideoCompleted(withFileURL fileURL: URL) {
    }
    
    func fusumaCameraRollUnauthorized() {
    }
}
