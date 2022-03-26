//
//  SimpleListViewController.swift
//  DynamicTypePresentation
//
//  Created by Lidiomar Machado on 25/03/22.
//

import Foundation
import UIKit

class SimpleListViewController: UIViewController {
    
    private let cellIdentifier = "SimpleListTableViewCell"
    private let simpleListDataSource = [
        "Lorem ipsum dolor sit amet.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        "Lorem ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
        "Lorem ipsum dolor.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"]
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        let nib = UINib(nibName: cellIdentifier, bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        tableView.dataSource = self
//        tableView.estimatedRowHeight = UITableView.automaticDimension
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
        cell.simpleListLabelCount.text = "\(indexPath.row+1)."
        cell.simpleListLabel.text = item
        return cell
    }
}
