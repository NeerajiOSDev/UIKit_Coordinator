//
//  HomeDetailVc.swift
//  Demo_UIKit_Coordinator
//
//  Created by bitcot on 09/12/24.
//

import UIKit

class HomeDetailVc: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var tblView: UITableView!
    
    var bikes: [Bike]? 

    override func viewDidLoad() {
        super.viewDidLoad()
        registerTblCell()
    }
    
    private func registerTblCell() {
        tblView.register(UINib(nibName: BikeDetailTblVwCell.identifier, bundle: nil), forCellReuseIdentifier: BikeDetailTblVwCell.identifier)
    }

}

extension HomeDetailVc: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bikes?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tblView.dequeueReusableCell(withIdentifier: BikeDetailTblVwCell.identifier, for: indexPath) as? BikeDetailTblVwCell else {return UITableViewCell()}
        cell.modelDetail = bikes?[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.presentWelcomeVcAsChildCoordinator(style: .automatic)
    }
}
