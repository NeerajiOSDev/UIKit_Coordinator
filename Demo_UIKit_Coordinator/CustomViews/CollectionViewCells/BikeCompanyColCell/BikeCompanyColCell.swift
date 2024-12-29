//
//  BikeCompanyColCellCollectionViewCell.swift
//  Demo_UIKit_Coordinator
//
//  Created by bitcot on 08/12/24.
//

import UIKit

class BikeCompanyColCell: UICollectionViewCell {
    
    static let identifier = String(describing: BikeCompanyColCell.self)
    
    @IBOutlet weak var lblSince: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    var companyDetail: BikeCompany? {
        didSet {
            configure()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure() {
        lblSince.text = "Since- \(companyDetail?.establishingYear ?? 0)"
        lblName.text = companyDetail?.companyName
        img.image = companyDetail?.companyLogo 
    }

}
