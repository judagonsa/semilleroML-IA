//
//  HomeViewController.swift
//  appSemillero
//
//  Created by Julian González on 6/06/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var btnVideoToText: UIButton!
    @IBOutlet weak var btnTextToVideo: UIButton!
    
    var window: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()
        
    }
    
    func configureButtons(){
        btnVideoToText.roundBorderButtons()
        btnTextToVideo.roundBorderButtons()
    }
    
    @IBAction func btnVideoToText(_ sender: Any) {
        let videoToTextStoryBoard = UIStoryboard(name: "VideoToText", bundle: nil)
        let videoToTextView = videoToTextStoryBoard.instantiateViewController(withIdentifier: "VideoToTextViewController") as! VideoToTextViewController
        self.present(videoToTextView, animated: true, completion: nil)
    }
    
    @IBAction func btnTextToVideo(_ sender: Any) {
        let textToVideoStoryBoard = UIStoryboard(name: "TextToVideo", bundle: nil)
        let textToVideoView = textToVideoStoryBoard.instantiateViewController(withIdentifier: "TextToVideoViewController") as! TextToVideoViewController
        self.present(textToVideoView, animated: true, completion: nil)
    }
}

extension UIViewController {
    
    
}

extension UIButton {
    func roundBorderButtons(){
        self.layer.cornerRadius = 10;
        self.clipsToBounds = true;
    }
}
