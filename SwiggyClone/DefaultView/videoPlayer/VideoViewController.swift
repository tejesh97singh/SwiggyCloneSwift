//
//  VideoViewController.swift
//  SwiggyClone
//
//  Created by Tejesh singh on 31/08/22.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {
    
  
    @IBOutlet weak var videoview: UIView!
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoUrl = URL(string: "https://previews.customer.envatousercontent.com/h264-video-previews/b6bb6b57-4576-4e03-9510-0d14d070a548/27472602.mp4")
        player = AVPlayer(url: videoUrl!)
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspect
        videoview.layer.addSublayer(playerLayer)
        NotificationCenter.default.addObserver(self,
                                                  selector: #selector(restartVideo),
                                                  name: .AVPlayerItemDidPlayToEndTime,
                                                  object: self.player?.currentItem)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        playerLayer.frame =  videoview.bounds
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        player.pause()
        player.seek(to: .zero)

    }
    
    @IBAction func onClickPlayPause(_ sender: Any) {
        if player?.rate == 0
        {
            player!.play()
        } else {
            player!.pause()
        }
    }
    @IBAction func onClickClose(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        player.seek(to: .zero)
        player.pause()
    }
    @objc func restartVideo() {
        player?.pause()
        player?.currentItem?.seek(to: CMTime.zero, completionHandler: { _ in
            self.player?.play()
        })
    }
}
