//
//  WelcomeScreenViewModel.swift
//  HydrationP
//
//  Created by Razzan on 25/04/1446 AH.
//
/*import SwiftUI
import Combine

class WelcomeScreenViewModel: ObservableObject {
    @Published var bodyWeight: String = ""
    @Published var recommendedWaterIntake: String = "" // خاصية لعرض الكمية المحسوبة
    
    // معادلة لحساب كمية الماء المطلوبة بناءً على الوزن
    func calculateWaterIntake() {
        // تحويل الوزن المدخل من نص إلى رقم
        guard let weight = Double(bodyWeight), weight > 0 else {
            recommendedWaterIntake = "Please enter a valid weight."
            return
        }
        
        // معادلة بسيطة لحساب كمية الماء (مثال: 35 مل لكل كيلوجرام)
        let waterIntakeInLiters = (weight * 0.035) // هنا الكمية باللتر
        recommendedWaterIntake = String(format: "%.2f liters", waterIntakeInLiters)
    }
    
    // التحقق من شرط التنقل
    func canNavigate() -> Bool {
        return !bodyWeight.isEmpty
    }
    
    func clearBodyWeight() {
        bodyWeight = ""
        recommendedWaterIntake = ""
    }
}
 */
import SwiftUI
import Combine

class WelcomeViewModel: ObservableObject {
    @Published var bodyWeight: String = ""
    
    // Function to clear the body weight
    func clearWeight() {
        bodyWeight = ""
    }
}
