//
//  ViewController.swift
//  ImageFromURL
//
//  Created by Surabhi Gupta on 12/7/18.
//  Copyright © 2018 Surabhi Gupta. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    @IBOutlet weak var imageIcon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageIcon.backgroundColor = UIColor.white
        }

    
    override func viewDidAppear(_ animated: Bool) {
        fetchImageFromURL()
    }

    func fetchImageFromURL()
    {
        //The image to download
        let remoteURLImage = URL(string: "https://solarianprogrammer.com/images/2013/02/28/mandelbrot_piece_Z2.png")!
        
        //Use alamofire to download the image
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            print("Enter the delay\n ")
            Alamofire.request(remoteURLImage).responseData {
                (response) in
                if response.error == nil
                {
                    print("result: ",response.result)
                    //Show the downloaded image
                    if let data = response.data {
                        
                        self.imageIcon.image = UIImage (data: data)
                    }
                    
                }
            }
        }
    
    }

}
