//
//  ViewController.swift
//  PSPDFKitJump
//
//  Created by Marcus Kida on 22/03/2016.
//  Copyright © 2016 Atlassian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openPdf(sender: UIButton) {
        let data = NSData(contentsOfFile: NSBundle.mainBundle().pathForResource("pdf-sample", ofType: "pdf")!)!
        let viewController = CustomPdfViewController(data: data)
        
        self.presentViewController(ContainmentViewController().containing(viewController), animated: true, completion: nil)
    }
    
}
