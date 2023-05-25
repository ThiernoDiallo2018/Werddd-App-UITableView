//
//  BottomViewController.swift
//  Werddd App
//
//  Created by Thierno Diallo on 5/7/23.
//

import UIKit

class BottomViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(DefinitionTableViewCell.self, forCellReuseIdentifier: DefinitionTableViewCell.id)
        tableView.layer.cornerRadius = 27
        tableView.tintColor = .darkGray
        tableView.backgroundColor = .secondarySystemFill
        return tableView
        
    }()
    
    /*
    
    private var listofDefinition = Definition()
    
    init(definitions: Definition = Definition(word: String, type: String, definition: String)) {
    word: String
    type: String
    definition:  String
        self.listofDefinition = definitions
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     */
    
    
    
    
    override func didMove(toParent parent: UIViewController?) {}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
      
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
    }
    
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DefinitionTableViewCell.id, for: indexPath) as? DefinitionTableViewCell else {
                return UITableViewCell()
            }
            //cell.contentView.backgroundColor = .black -- this will mess up the cells - need to change colors in the viewDidLoad()
            
            
            cell.configureInformation(with: definitions[indexPath.row])
            
            return cell
        }
        
    
    
    
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return definitions.count
        }
        
    }
    

