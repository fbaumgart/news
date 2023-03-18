//
//  HomeViewController.swift
//  News
//
//  Created by Filip Baumgart on 17/03/2023.
//

import UIKit

final class HomeViewController: UIViewController {
  
  var tableView: UITableView!
  
  init(tableView: UITableView = UITableView()) {
    self.tableView = tableView
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupTableView()
  }
  
  private func setupTableView() {
    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    let margins = view.layoutMarginsGuide
    tableView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
    tableView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
    tableView.delegate = self
    tableView.dataSource = self
    tableView.rowHeight = UITableView.automaticDimension
    tableView.estimatedRowHeight = 10
  }
}

extension HomeViewController: UITableViewDelegate {
  
}

extension HomeViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
    var content = cell.defaultContentConfiguration()
    content.text = "Hejka"
    content.image = UIImage(systemName: "star")
    cell.contentConfiguration = content
    return cell
  }
}

final class NewsTableViewCell: UITableViewCell {
  
}
