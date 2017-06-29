//
//  VideoTableViewCell.swift
//  JRE
//
//  Created by Sam Elder on 6/28/17.
//  Copyright © 2017 Sam Elder. All rights reserved.
//

import UIKit
import SDWebImage

class VideoTableViewCell: UITableViewCell {
    
    //Set outlets to our view
    @IBOutlet weak var thumbnailImage: UIView!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoLength: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //Apply our data to the view upon initiation
    func updateUI(video: Video) {
        
        videoTitle.text = video.videoTitle
        thumbnailImage.sd_internalSetImage(with: URL(string: video.thumbnailUrl), placeholderImage: nil, options: SDWebImageOptions.continueInBackground, operationKey: nil, setImageBlock: nil, progress: nil, completed: nil)
        
    }

}
