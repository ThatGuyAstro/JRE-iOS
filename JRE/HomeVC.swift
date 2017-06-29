//
//  FirstViewController.swift
//  JRE
//
//  Created by Sam Elder on 6/28/17.
//  Copyright © 2017 Sam Elder. All rights reserved.
//

import UIKit
import Alamofire

class FirstViewController: UIViewController{

    //Set our outlets
    @IBOutlet weak var videoFeed: UITableView!
    
    var videos = [Video]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.videoFeed.dataSource = self
        self.videoFeed.delegate = self

        setupUI()
        getFeed()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    
    
    
    func setupUI() {
        
        self.navigationController?.navigationBar.backgroundColor = CONSTANTS.UI.NAV_COLOR
        self.navigationController?.navigationBar.barTintColor = CONSTANTS.UI.NAV_COLOR
        self.navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]

        
    }
    
    //Get videos from JRE
    func getFeed() {
        
        //Dummy data for now
        let v1 = Video(videoUrl: "https://www.youtube.com/watch?v=PHzIgui7ZKw", thumbnailUrl: "https://i.ytimg.com/vi/PHzIgui7ZKw/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLATvsXSkO9eDD-v2nl5S8Ubj68bXg", videoTitle: "Joe Rogan Experience #980 - Chris D'Elia")
        
        videos.append(v1)
        
    }


}


extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as? VideoTableViewCell {
            
            let video = videos[indexPath.row]
            
            cell.updateUI(video: video)
            
            
            return cell
            
        } else {
            return UITableViewCell()
            
        }
    }
    
}
