//
//  PostCollectionCollectionViewCell.swift
//  cau_study_ios
//
//  Created by 강호현 on 2018. 8. 3..
//  Copyright © 2018년 신형재. All rights reserved.
//

import UIKit
import FirebaseAuth

class PostCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postTag: UILabel!
    @IBOutlet weak var postCategory: UIImageView!
    
    var post: Post? {
        didSet {
            updateView()
        }
    }
    
    @IBOutlet weak var finImage: UIImageView!
    @IBOutlet weak var finLabel: UILabel!
    
    var delegate: ExploreTableViewCellDelegate?
    
    func updateView() {
        postTitle.text = post?.title
        postTag.text = post?.tags
        
        if post?.wanted == true {
            switch post?.category {
            case "어학":
                postCategory.image = UIImage(named: "collan")
            case "학업":
                postCategory.image = UIImage(named: "colstu")
            case "취업":
                postCategory.image = UIImage(named: "coljob")
            case "기타":
                postCategory.image = UIImage(named: "coletc")
            default : break
            }
        }else{
                switch post?.category {
            case "어학":
                postCategory.image = UIImage(named: "fincollan")
                finImage.image = #imageLiteral(resourceName: "finicon")
                finLabel.text = "마감"
            case "학업":
                postCategory.image = UIImage(named: "fincolstu")
                finImage.image = #imageLiteral(resourceName: "finicon")
                finLabel.text = "마감"
            case "취업":
                postCategory.image = UIImage(named: "fincoljob")
                finImage.image = #imageLiteral(resourceName: "finicon")
                finLabel.text = "마감"
            case "기타":
                    postCategory.image = UIImage(named: "fincoletc")
                    finImage.image = #imageLiteral(resourceName: "finicon")
                    finLabel.text = "마감"
                default: break
            }

    }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }
    
    

    
}
