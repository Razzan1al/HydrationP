//
//  waterIntakeViewModel.swift
//  HydrationP
//
//  Created by Razzan on 25/04/1446 AH.
//
import SwiftUI
import Combine

class waterIntakeViewModel: ObservableObject {
    @Published var water: Double = 0.0
    private var weight: Double
    
    // هنا نحسب كمية الماء بناءً على الوزن المدخل
    private var waterGoal: Double {
        return weight * 0.04
    }

    init(weight: Double) {
        self.weight = weight
    }
    
 /* var waterState :water{
        if water < 1.0 {
            return .low
        } else if water < 2.0 {
            return .medium
        } else if water < waterGoal {
            return .high
        } else {
            return .end
        }
    }
    
    var waterText: String {
        "\(water, specifier: "%.1f") liter / \(waterGoal, specifier: "%.1f") liter "
    }
    
    func increaseWater(amount: Double) {
        if water + amount <= waterGoal {
            water += amount
        }
    }
    
    func decreaseWater(amount: Double) {
        if water - amount >= 0 {
            water -= amount
        }
    }
  */
    
}

