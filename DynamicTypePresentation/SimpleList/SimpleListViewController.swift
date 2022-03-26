//
//  SimpleListViewController.swift
//  DynamicTypePresentation
//
//  Created by Lidiomar Machado on 25/03/22.
//

import Foundation
import UIKit

struct Cuisine {
    var image: String
    var description: String
}

class SimpleListViewController: UIViewController {
    
    private let cellIdentifier = "SimpleListTableViewCell"
    private let simpleListDataSource = [
        Cuisine(image: "chinese", description: "Lorem ipsum dolor sit amet."),
        Cuisine(image: "caribbean", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        Cuisine(image: "greek", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        Cuisine(image: "indian", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"),
        Cuisine(image: "italian", description: "Lorem ipsum"),
        Cuisine(image: "korean", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"),
        Cuisine(image: "mexican", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        Cuisine(image: "moroccan", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"),
        Cuisine(image: "peruvian", description: "Lorem ipsum dolor."),
        Cuisine(image: "thai", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
    ]
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        let nib = UINib(nibName: cellIdentifier, bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        tableView.dataSource = self
        tableView.estimatedRowHeight = UITableView.automaticDimension
    }
}

extension SimpleListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpleListDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? SimpleListTableViewCell else {
            return UITableViewCell()
        }
        let item = simpleListDataSource[indexPath.row]
        cell.simpleListImage.image = UIImage(named: item.image)
        cell.simpleListLabel.text = item.description
        return cell
    }
}
