//
//  ViewController.swift
//  mold no more
//
//  Created by Joanna Chen on 2016-10-14.
//  Copyright © 2016 Joanna Chen. All rights reserved.
//

import UIKit
import TesseractOCR

class ViewController: UIViewController, G8TesseractDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tesseract:G8Tesseract = G8Tesseract(language:"eng+ita");
        
        tesseract.delegate = self;
        tesseract.charWhitelist = "01234567890";
        tesseract.image = UIImage(named: "image_sample.jpg");
        tesseract.recognize();
        
        NSLog("%@", tesseract.recognizedText);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func shouldCancelImageRecognitionForTesseract(tesseract: G8Tesseract!) -> Bool {
        return false; // return true if you need to interrupt tesseract before it finishes
    }

}

