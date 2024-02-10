//
//  HomeTableViewController.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import UIKit


// MARK: - Protocol -
protocol HomeViewProtocol: AnyObject {
    func navigateToDetail(with data: CharacterModel?)
    func updateViews()
}

// MARK: - Class -
class HomeTableViewController: UITableViewController {
    
    var viewModel: HomeViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        viewModel?.onViewsLoaded()
        /*
        let backButton = UIBarButtonItem()
        backButton.title = "Volver" // El texto que desees
        navigationItem.backBarButtonItem = backButton
        */
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: "HomeCellTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
        self.title = "List Of Heroes"
    }
    
    // Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.dataCount ?? 0
    }
    
    // Update Views
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as?
                HomeCellTableViewCell else {
            return UITableViewCell()
        }
        
        if let data = viewModel?.data(at: indexPath.row) {
            cell.updateViews(data: data)
        }
        
        return cell
    }
    
    // Select Item
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            viewModel?.onItemSelected(at: indexPath.row)
    }
}


// MARK: - Extension -

extension HomeTableViewController: HomeViewProtocol {
    func updateViews() {
        tableView.reloadData()
    }
    
    func navigateToDetail(with data: CharacterModel?) {
        guard let data = data else { return }
        let nextVC = DetailViewController()
        // FIXME: CHECK THE ERROR
        let nextVM = DetailViewModel(character: data, viewDelegate: nextVC)
        
        nextVC.viewModel = nextVM
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
