//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Sean Perez on 3/11/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.main.async {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                
            }
        }
    }

}
