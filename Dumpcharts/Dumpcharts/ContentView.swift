//
//  ContentView.swift
//  Dumpcharts
//
//  Created by Manzella, Michael on 4/7/21.
//
import SwiftUICharts
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    //Legend
                    let mom = Legend(color: .blue,label: "Martha")
                    //Datapoints
                    let cal: [DataPoint] = [
                    .init(value: 700,label:"Mon",legend: mom),
                    .init(value: 1500,label:"Tue",legend: mom),
                    .init(value: 2000,label:"Wed",legend: mom),
                    .init(value: 1500,label:"Thu",legend: mom),
                    .init(value: 750,label:"Fri",legend: mom),
                    .init(value: 800,label:"Sat",legend: mom),
                    .init(value: 200,label:"Sun",legend: mom),
                    ]
                    let weight: [DataPoint] = [
                    .init(value: 150,label:"Mon",legend: mom),
                    .init(value: 149,label:"Tue",legend: mom),
                    .init(value: 148,label:"Wed",legend: mom),
                    .init(value: 140,label:"Thu",legend: mom),
                    .init(value: 135,label:"Fri",legend: mom),
                    .init(value: 120,label:"Sat",legend: mom),
                    .init(value: 110,label:"Sun",legend: mom),
                    ]                    //Line
                    Section(header: Text("Martha's Weekly Calorie Intake")){
                        LineChartView(dataPoints: cal)
                            .padding()
                    }
                    
                    //Bar
                    Section(header: Text("Martha's Daily Weight")){
                        BarChartView(dataPoints: weight)
                            .padding()
                    }
                    
                }
        }
            .navigationTitle("Dump the Bump")
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
