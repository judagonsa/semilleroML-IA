//
//  TextToVideoViewCell.swift
//  appSemillero
//
//  Created by Julian González on 7/06/21.
//

import UIKit

protocol playVideo {
    func playTextToVideo(index: IndexPath)
}

class TextToVideoViewCell: UITableViewCell {
    
    @IBOutlet weak var labelTextVideo: UILabel!
    @IBOutlet weak var btnPlayVideo: UIButton!
    
    var cellDelegate: playVideo?
    var index: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    @IBAction func btnPlayVideo(_ sender: Any) {
        cellDelegate?.playTextToVideo(index: index!)
    }
}
