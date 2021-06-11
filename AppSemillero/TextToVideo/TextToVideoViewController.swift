//
//  TextToVideoViewController.swift
//  appSemillero
//
//  Created by Julian González on 6/06/21.
//

import UIKit

class TextToVideoViewController: UIViewController {
    
    var textTable = [String]()
    
    @IBOutlet weak var textUser: UITextView!
    @IBOutlet weak var btnSend: UIButton!
    
    @IBOutlet weak var tableViewText: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textUser.layer.borderWidth = 1
        textUser.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func btnBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnSend(_ sender: Any) {
        textTable.append(textUser.text!)
        tableViewText.reloadData()
        textUser.text = ""
    }
}

extension TextToVideoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TextToVideoViewCell
        cell.index = indexPath
        cell.cellDelegate = self
        cell.labelTextVideo.text = textTable[indexPath.row]
        
        return cell
    }
}

extension TextToVideoViewController: playVideo {
    func playTextToVideo(index: IndexPath) {
        print("traducir: \(textTable[index.row])")
    }
}
