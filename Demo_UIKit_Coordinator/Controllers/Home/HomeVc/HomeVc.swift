//
//  HomeVc.swift
//  Demo_UIKit_Coordinator
//
//  Created by bitcot on 08/12/24.
//

import UIKit

class HomeVc: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var colView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        registerColCell()
    }
    
    private func registerColCell() {
        colView.register(UINib(nibName: BikeCompanyColCell.identifier, bundle: nil), forCellWithReuseIdentifier: BikeCompanyColCell.identifier)
    }

}

extension HomeVc: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bikeCompanies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = colView.dequeueReusableCell(withReuseIdentifier: BikeCompanyColCell.identifier, for: indexPath) as? BikeCompanyColCell else {return UICollectionViewCell()}
        cell.companyDetail = bikeCompanies[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (colView.frame.width / 2) - 10, height: 195)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCompany = bikeCompanies[indexPath.row]
        showBikesForCompany(company: selectedCompany)
        
    }
    
    func showBikesForCompany(company: BikeCompany) {
        let companyBikes = bikes.filter { $0.companyID == company.id }
        // Perform any additional operations if needed
        coordinator?.navigateToHomeDetailVc(companyBikes)
    }
    
}
