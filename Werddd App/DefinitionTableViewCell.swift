//
//  TableViewCell.swift
//  Werddd App
//
//  Created by Thierno Diallo on 5/19/23.
//

import UIKit

class DefinitionTableViewCell: UITableViewCell {
    
    // MARK: - Properties - Breakdown of the actual Cell
    
    static let id: String = "DefinitionTableViewCell"
    
    // StackView
    
    /*
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .leading
        return stackView
        
    }()
     
     */
    
    let containerCellView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = .darkGray
        container.layer.cornerRadius = 20
        return container
    }()
    
    
    let cellWord: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    let cellType: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .italicSystemFont(ofSize: 12)
        label.textColor = .black
        return label
    }()
    
    
    let cellDefinition: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpTableUI()
        
        backgroundColor = .secondarySystemFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   private func setUpTableUI() {
        
        
        
        containerCellView.addSubview(cellWord)
        containerCellView.addSubview(cellType)
        containerCellView.addSubview(cellDefinition)
        
        contentView.addSubview(containerCellView)

        
        
        NSLayoutConstraint.activate([
            
        
        containerCellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 13),
        containerCellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 19),
        containerCellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -19),
        containerCellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
        
        
        
        cellWord.topAnchor.constraint(equalTo: containerCellView.topAnchor, constant: 10),
        cellWord.leadingAnchor.constraint(equalTo: containerCellView.leadingAnchor, constant: 15),
        
        
        cellType.bottomAnchor.constraint(equalTo: cellWord.bottomAnchor),
        cellType.leadingAnchor.constraint(equalTo: cellWord.trailingAnchor, constant: 5),
      
        
        cellDefinition.leadingAnchor.constraint(equalTo: cellWord.leadingAnchor),
        cellDefinition.trailingAnchor.constraint(equalTo: containerCellView.trailingAnchor, constant: -4),
        cellDefinition.topAnchor.constraint(equalTo: cellWord.bottomAnchor, constant: 5),
        cellDefinition.bottomAnchor.constraint(equalTo: containerCellView.bottomAnchor, constant: -10)
        
        
        ])
        
    }
    //This configues and tells us what Data to pass over
    
    func configureInformation(with finalDefinition: Definition) {
        cellWord.text = finalDefinition.word
        cellType.text = finalDefinition.type
        cellDefinition.text = finalDefinition.definition
    }

}
