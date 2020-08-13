//
//  DataController.swift
//  UI Chart
//
//  Created by Muhammad Arif Hidayatulloh on 13/08/20.
//  Copyright © 2020 Ardat Tracode. All rights reserved.
//

import UIKit
import Charts

class DataController: UIViewController, UISearchBarDelegate  {

    @IBOutlet weak var dataBar: BarChartView!
    lazy   var searchBar:UISearchBar = UISearchBar(
        frame: CGRect(x: 0, y: 0, width: 200, height: 0)
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.placeholder = "Cari Disini"
        searchBar.delegate = self
        let textFieldInsideUISearchBar = searchBar.value(forKey: "searchField") as? UITextField
        textFieldInsideUISearchBar?.textColor = .black
        textFieldInsideUISearchBar?.font = textFieldInsideUISearchBar?.font?.withSize(12)

        navigationItem.titleView = searchBar
        // Do any additional setup after loading the view.
        setData()
    }
    
    func setData(){
        let set = BarChartDataSet(entries: yValues, label: "Kesehatan")
        set.setColor(.white)
        
        let dataBar = BarChartData(dataSet: set)
        dataBar.setDrawValues(false)
        
        self.dataBar.data = dataBar
        self.dataBar.animate(xAxisDuration: 2.5)
        
        self.dataBar.rightAxis.enabled = false
        let yAxis = self.dataBar.leftAxis
        yAxis.labelFont = .boldSystemFont(ofSize: 12)
        yAxis.setLabelCount(6, force: false)
        yAxis.labelTextColor = .white
        yAxis.axisLineColor = .white
        yAxis.labelPosition = .outsideChart
        let xAxis = self.dataBar.xAxis
        xAxis.labelPosition = .bottom
        xAxis.labelFont = .boldSystemFont(ofSize: 12)
        xAxis.setLabelCount(6, force: false)
        xAxis.labelTextColor = .white
        xAxis.axisLineColor = .blue
    }
    
    let yValues : [BarChartDataEntry] = [
        BarChartDataEntry(x: 0.0, y: 0.0),
        BarChartDataEntry(x: 1.0, y: 3.0),
        BarChartDataEntry(x: 2.0, y: 10.0),
        BarChartDataEntry(x: 3.0, y: 7.0),
        BarChartDataEntry(x: 4.0, y: 4.0),
        BarChartDataEntry(x: 5.0, y: 7.0),
        BarChartDataEntry(x: 6.0, y: 8.0),
        BarChartDataEntry(x: 7.0, y: 23.0),
        BarChartDataEntry(x: 8.0, y: 15.0),
        BarChartDataEntry(x: 9.0, y: 13.0),
        BarChartDataEntry(x: 10.0, y: 17.0),
        BarChartDataEntry(x: 11.0, y: 15.0),
        BarChartDataEntry(x: 12.0, y: 17.0),
        BarChartDataEntry(x: 13.0, y: 18.0),
        BarChartDataEntry(x: 14.0, y: 19.0),
        BarChartDataEntry(x: 15.0, y: 30.0),
        BarChartDataEntry(x: 16.0, y: 20.0),
        BarChartDataEntry(x: 17.0, y: 24.0),
        BarChartDataEntry(x: 18.0, y: 10.0),
        BarChartDataEntry(x: 19.0, y: 15.0),
        BarChartDataEntry(x: 20.0, y: 13.0),
        BarChartDataEntry(x: 21.0, y: 30.0),
        BarChartDataEntry(x: 22.0, y: 20.0),
        BarChartDataEntry(x: 23.0, y: 0.0)
    ]
}

extension DataController : ChartViewDelegate {
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        print(entry)
    }
}
