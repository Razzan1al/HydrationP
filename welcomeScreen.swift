//
//  welcomeScreen.swift
//  HydrationP
//
//  Created by Razzan on 18/04/1446 AH.
//
/*import SwiftUI

struct welcomeScreen: View {
    @State private var bodyWeight: String = ""
    
    var body: some View {
        NavigationView{
            VStack {
                
                VStack (spacing:20){
                    Image("drop")
                        .padding(.leading, -170.0)
                    
                    Text("Hydrate")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                    // .multilineTextAlignment(.leading)
                    
                    Text("Start with Hydrate to record and track your water intake daily based on your needs and stay hydrated")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.top,120)
                .padding(.bottom,40)
                .padding(.leading)
                
                
                VStack {
                    HStack {
                        TextField("Enter your weight", text: $bodyWeight)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .keyboardType(.decimalPad)
                        
                        if !bodyWeight.isEmpty {
                            Button(action: {
                                bodyWeight = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                                    .background(Color(.systemGray6))
                                
                            }
                        }
                    }
                }
                
                .background(Color(.systemGray6))
                .padding(.leading)
                .padding(.trailing)
                Spacer()
                
                // Button
                
                VStack{
                    
                    NavigationLink(destination: interval()) {
                        Text("Calculate Now")
                            .font(.body)
                            .bold()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.lightBLUE)
                            .cornerRadius(10)
                        
                        
                    }
                    Spacer()
                        .frame(height: 50)
                    //.padding(.horizontal)
                }
                //            .padding(.bottom ,-100)
                .padding(.horizontal)
                
            }
        }
    }
}
#Preview {
    welcomeScreen()
}
 */
/*import SwiftUI

struct welcomeScreen: View {
    @StateObject private var viewModel = WelcomeScreenViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing: 20) {
                    Image("drop")
                        .padding(.leading, -170.0)
                    
                    Text("Hydrate")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                    
                    Text("Start with Hydrate to record and track your water intake daily based on your needs and stay hydrated")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.top, 120)
                .padding(.bottom, 40)
                .padding(.leading)
                
                VStack {
                    HStack {
                        TextField("Enter your weight", text: $viewModel.bodyWeight)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .keyboardType(.decimalPad)
                        
                        if !viewModel.bodyWeight.isEmpty {
                            Button(action: {
                                viewModel.clearBodyWeight()
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                                    .background(Color(.systemGray6))
                            }
                        }
                    }
                }
                .background(Color(.systemGray6))
                .padding(.leading)
                .padding(.trailing)
                
                // زر لحساب كمية الماء
                Button(action: {
                    viewModel.calculateWaterIntake()
                }) {
                    Text("Calculate Water Intake")
                        .font(.body)
                        .bold()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                // عرض كمية الماء المطلوبة
                if !viewModel.recommendedWaterIntake.isEmpty {
                    Text("Recommended Water Intake: \(viewModel.recommendedWaterIntake)")
                        .font(.headline)
                        .padding(.top, 10)
                        .foregroundColor(.blue)
                }
                
                Spacer()
            }
        }
    }
}
#Preview {
    welcomeScreen()
}
 */
import SwiftUI

struct WelcomeScreen: View {
    @StateObject private var viewModel = WelcomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing: 20) {
                    Image("drop")
                        .padding(.leading, -170.0)
                    
                    Text("Hydrate")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                    
                    Text("Start with Hydrate to record and track your water intake daily based on your needs and stay hydrated")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.top, 120)
                .padding(.bottom, 40)
                .padding(.leading)
                
                VStack {
                    HStack {
                        TextField("Enter your weight", text: $viewModel.bodyWeight)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .keyboardType(.decimalPad)
                        
                        if !viewModel.bodyWeight.isEmpty {
                            Button(action: {
                                viewModel.clearWeight()
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                                    .background(Color(.systemGray6))
                            }
                        }
                    }
                }
                .background(Color(.systemGray6))
                .padding(.leading)
                .padding(.trailing)
                
                Spacer()
                
                VStack {
                        Text("Calculate Now")
                            .font(.body)
                            .bold()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue) // Change to your desired color
                            .cornerRadius(10)
                    }
                    Spacer()
                        .frame(height: 50)
                }
                .padding(.horizontal)
            }
        }
    }


struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
