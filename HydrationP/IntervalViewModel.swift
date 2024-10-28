//
//  IntervalViewModel.swift
//  HydrationP
//
//  Created by Razzan on 25/04/1446 AH.
//
import SwiftUI
import Combine

class IntervalViewModel: ObservableObject {
    @Published var startHour: Date = Date()
    @Published var endHour: Date = Date()
    @Published var selectedInterval: Int = 15
    
    let intervals = [15, 30, 60, 90, 120, 180, 240, 300] // خيارات فترات التنبيه
    
    func updateSelectedInterval(_ interval: Int) {
        selectedInterval = interval
    }
}

