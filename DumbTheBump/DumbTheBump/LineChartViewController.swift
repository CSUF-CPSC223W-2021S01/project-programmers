//
//  LineChartViewController.swift
//  DumbTheBump
//
//  Created by Mario on 5/13/21.
//

import UIKit
import Charts

class LineChartViewController: UIViewController, ChartViewDelegate {
    var lineChart = LineChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        var entries = [ChartDataEntry]()
        let weights = readWeight()
       
        
        for x in weights?.tracker ?? [] {
            entries.append(ChartDataEntry(x: Double((weights?.returnDay())!), y: Double((weights?.returnWeight())!)))
        }
        
        let set = LineChartDataSet(entries:entries)
        set.colors = ChartColorTemplates.material()
        let data = LineChartData(dataSet: set)
        lineChart.data = data
    }

}
