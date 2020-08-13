//
//  DashboardController.swift
//  UI Chart
//
//  Created by Muhammad Arif Hidayatulloh on 12/08/20.
//  Copyright © 2020 Ardat Tracode. All rights reserved.
//

import UIKit
import Charts

class DashboardController: UIViewController {

    @IBOutlet weak var chartFirst: LineChartView!
    @IBOutlet weak var chartSecond: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Dashboard"
        // Do any additional setup after loading the view.
        
        setData(chart: chartFirst)
        setData(chart: chartSecond)
        
    }
    
    func setData(chart: LineChartView){
        let set1 = LineChartDataSet(entries: yValues, label: "GRAFIK")
        set1.mode = .cubicBezier
        set1.drawCirclesEnabled = false
        set1.lineWidth = 3
        set1.setColor(.white)
        set1.fill = Fill(color: .white)
        set1.fillAlpha = 0.8
        set1.drawFilledEnabled = true
        set1.drawHorizontalHighlightIndicatorEnabled = false
        let data = LineChartData(dataSet: set1)
        data.setDrawValues(false)
        
        chart.data = data
        
        chart.rightAxis.enabled = false
        
        let yAxis = chart.leftAxis
        yAxis.labelFont = .boldSystemFont(ofSize: 12)
        yAxis.setLabelCount(6, force: false)
        yAxis.labelTextColor = .white
        yAxis.axisLineColor = .white
        yAxis.labelPosition = .outsideChart
        
        chart.xAxis.labelPosition = .bottom
        chart.xAxis.labelFont = .boldSystemFont(ofSize: 12)
        chart.xAxis.setLabelCount(6, force: false)
        chart.xAxis.labelTextColor = .white
        chart.xAxis.axisLineColor = .blue
        chart.animate(xAxisDuration: 2.5)
        
    }
    
    let yValues : [ChartDataEntry] = [
        ChartDataEntry(x: 0.0, y: 0.0),
        ChartDataEntry(x: 1.0, y: 3.0),
        ChartDataEntry(x: 2.0, y: 10.0),
        ChartDataEntry(x: 3.0, y: 7.0),
        ChartDataEntry(x: 4.0, y: 4.0),
        ChartDataEntry(x: 5.0, y: 7.0),
        ChartDataEntry(x: 6.0, y: 8.0),
        ChartDataEntry(x: 7.0, y: 23.0),
        ChartDataEntry(x: 8.0, y: 15.0),
        ChartDataEntry(x: 9.0, y: 13.0),
        ChartDataEntry(x: 10.0, y: 17.0),
        ChartDataEntry(x: 11.0, y: 15.0),
        ChartDataEntry(x: 12.0, y: 17.0),
        ChartDataEntry(x: 13.0, y: 18.0),
        ChartDataEntry(x: 14.0, y: 19.0),
        ChartDataEntry(x: 15.0, y: 30.0),
        ChartDataEntry(x: 16.0, y: 20.0),
        ChartDataEntry(x: 17.0, y: 24.0),
        ChartDataEntry(x: 18.0, y: 10.0),
        ChartDataEntry(x: 19.0, y: 15.0),
        ChartDataEntry(x: 20.0, y: 13.0),
        ChartDataEntry(x: 21.0, y: 30.0),
        ChartDataEntry(x: 22.0, y: 20.0),
        ChartDataEntry(x: 23.0, y: 0.0)
    ]
    
}

extension DashboardController : ChartViewDelegate {
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        print(entry)
    }
}
