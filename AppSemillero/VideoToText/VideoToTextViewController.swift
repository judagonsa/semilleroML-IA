//
//  VIdeoToTextViewController.swift
//  appSemillero
//
//  Created by Julian González on 6/06/21.
//

import UIKit

class VideoToTextViewController: UIViewController {
    
    @IBOutlet weak var btnViewCamera: UIImageView!
    @IBOutlet weak var btnCloseView: UIButton!
    @IBOutlet weak var textVideo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()
    }
    
    func configureButtons(){
        btnCloseView.layer.cornerRadius = btnCloseView.frame.size.width / 2
        btnCloseView.backgroundColor = UIColor.gray
        btnCloseView.layer.masksToBounds = true
    }
    
    @IBAction func btnCloseView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
