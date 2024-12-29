//
//  BikeDetailTblVwCell.swift
//  Demo_UIKit_Coordinator
//
//  Created by bitcot on 09/12/24.
//

import UIKit

class BikeDetailTblVwCell: UITableViewCell {
    
    static let identifier = String(describing: BikeDetailTblVwCell.self)
    
    @IBOutlet weak var lblModelName: UILabel!
    @IBOutlet weak var lblLaunchYear: UILabel!
    @IBOutlet weak var lblCC: UILabel!
    @IBOutlet weak var lblHP: UILabel!
    
    var modelDetail: Bike? {
        didSet {
            loadUI()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func loadUI() {
        guard let modelDetail  else {return}
        lblModelName.text = modelDetail.bikeName
        lblLaunchYear.text = "\(modelDetail.launchYear)"
        lblCC.text = "\(modelDetail.ccOfBike)"
        lblHP.text = "\(modelDetail.hpOfBike)"
    }
    
}
