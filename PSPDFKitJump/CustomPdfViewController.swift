//
//  CustomPdfViewController.swift
//  PSPDFKitJump
//
//  Created by Marcus Kida on 22/03/2016.
//  Copyright © 2016 Atlassian. All rights reserved.
//

import PSPDFKit

class CustomPdfViewController: PSPDFViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.leftBarButtonItems = [
            UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: "close:")
        ]
    }
    
    convenience init(data: NSData) {
        self.init(document: PSPDFDocument(data: data))
    }
    
    override func commonInitWithDocument(document: PSPDFDocument?, configuration: PSPDFConfiguration) {
        super.commonInitWithDocument(document, configuration: PSPDFConfiguration { builder in
            builder.useParentNavigationBar = true;
            builder.backgroundColor = UIColor.lightGrayColor();
            builder.searchMode = .Inline;
            builder.documentLabelEnabled = .NO;
        })
    }
    
    func close(sender: CustomPdfViewController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
