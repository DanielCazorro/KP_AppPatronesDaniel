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
    }
    
    /// Registrar la celda personalizada para su uso en la tabla
    private func registerCells() {
        tableView.register(UINib(nibName: "HomeCellTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
        self.title = "List Of Heroes" // Establecer el título de la vista
    }
    
    // Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.dataCount ?? 0
    }
    
    // Update Views
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as?
                HomeCellTableViewCell else {
            return UITableViewCell() // Devolver una celda vacía si no se puede crear la celda personalizada
        }
        
        if let data = viewModel?.data(at: indexPath.row) {
            cell.updateViews(data: data) // Actualizar las vistas de la celda con los datos del ViewModel
        }
        
        return cell
    }
    
    // Select Item
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.onItemSelected(at: indexPath.row) // Notificar al ViewModel cuando se selecciona una celda
    }
}

// MARK: - Extension -

extension HomeTableViewController: HomeViewProtocol {
    func updateViews() {
        tableView.reloadData() // Recargar la tabla cuando se actualicen los datos
    }
    
    func navigateToDetail(with data: CharacterModel?) {
        guard let data = data else { return }
        
        // Crear y configurar el controlador de vista de detalle con el ViewModel adecuado
        let nextVC = DetailViewController()
        let nextVM = DetailViewModel(character: data, viewDelegate: nextVC)
        nextVC.viewModel = nextVM
        
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
