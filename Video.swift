//
//  Video.swift
//  JRE
//
//  Created by Sam Elder on 6/28/17.
//  Copyright © 2017 Sam Elder. All rights reserved.
//

import Foundation


class Video {
    
    private var _videoUrl: String!
    private var _thumbnailUrl: String!
    private var _videoTitle: String!
    
    var videoUrl: String {
        
        return _videoUrl
        
    }
    
    var thumbnailUrl: String {
        
        return _thumbnailUrl
        
    }
    
    var videoTitle: String {
        
        return _videoTitle
        
    }
    
    
    init(videoUrl: String, thumbnailUrl: String, videoTitle: String) {
        
        _videoUrl = videoUrl
        _thumbnailUrl = thumbnailUrl
        _videoTitle = videoTitle
        
    }
    
}
