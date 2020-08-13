//
//  MedicalIDController.swift
//  UI Chart
//
//  Created by Muhammad Arif Hidayatulloh on 13/08/20.
//  Copyright © 2020 Ardat Tracode. All rights reserved.
//

import UIKit

class MedicalIDController: UIViewController {

    @IBOutlet weak var medicalTable: UITableView!
    
    let data : [biodataModel] = [
        biodataModel(title: "Lorem Ipsum Blabla", sub: "is simply dummy text of the printing and typesetting industry"),
        biodataModel(title: "Lorem ke 2", sub: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
        biodataModel(title: "Hobi", sub: "Mengotak Atik Code dan Experiment"),
        biodataModel(title: "Notes", sub: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Medical ID"
        navigationController?.navigationBar.barTintColor = .systemRed
        
        let cellTabel = UINib(nibName: "MedicalIDCell", bundle: nil)
        
        medicalTable.register(cellTabel, forCellReuseIdentifier: "cellTable")
        // Do any additional setup after loading the view.
        medicalTable.delegate = self
        medicalTable.dataSource = self
        medicalTable.reloadData()
    }
}

extension MedicalIDController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = self.data[indexPath.item]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath) as! MedicalIDCell
        cell.setData(data: data)
        return cell
    }
    
}
