
import SwiftUI

enum WaterState {
    case low, medium, high, end

    var imageName: String {
        switch self {
        case .low:
            return "zzz"
        case .medium:
            return "turtle"
        case .high:
            return "rabbit"
        case .end:
            return "handclapp"
        }
    }
}

struct WaterIntakeView: View {
    @State private var water: Double = 0.0
    private let waterGoal: Double = 2.7
    
    var body: some View {
        VStack {
            Text("Today's Water Intake")
                .font(.body)
                .foregroundColor(.black.opacity(0.6))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("\(water, specifier: "%.1f") liter / \(waterGoal, specifier: "%.1f") liter")
                .font(.title)
                .bold()
                .foregroundColor(water >= waterGoal ? .green : .black)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
                .frame(height: 100)
            
            
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 30)
                    .frame(width: 300, height: 300)
                
                Circle()
                    .trim(from: 0, to: CGFloat(water / waterGoal))
                    .stroke(Color.lightBLUE, lineWidth: 30)
                    .rotationEffect(.degrees(-90))
                    .frame(width: 300, height: 300)
                    .animation(.easeInOut ( duration: 0.6),value:water) 
                
                Image(waterState.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.yellow)
            }
            
            Spacer()
                .frame(height: 100)
            
            
            VStack{
                Text("\(water, specifier: "%.1f") L")
                    .font(.title2)
                    .fontWeight(.bold)
                
                HStack{
                    Stepper(value: $water, in: 0...waterGoal, step: 0.5){
                    }
                }.padding(.trailing,140)
            }
        }
        .padding()
    }
    
    var waterState: WaterState {
        if water < 1.0 {
            return .low
        } else if water < 2.0 {
            return .medium
        } else if water < 2.7 {
            return .high
        } else {
            return .end
        }
    }
}

#Preview {
    WaterIntakeView()
}
/*أimport SwiftUI

struct waterIntake: View {
    @StateObject private var viewModel: waterIntakeViewModel
    
    init(weight: Double) {
        _viewModel = StateObject(wrappedValue: waterIntakeViewModel(weight: weight))
    }
    
    var body: some View {
        VStack {
            Text("Today's Water Intake")
                .font(.body)
                .foregroundColor(.black.opacity(0.6))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            //    Text(viewModel.waterText)
            //     .font(.title)
            //   .bold()
            //.foregroundColor(viewModel.water >= viewModel.waterGoal ? .green : .black)
            //   .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer().frame(height: 100)
            
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 30)
                    .frame(width: 300, height: 300)
                
                Circle()
                //  .trim(from: 0, to: CGFloat(viewModel.water / viewModel.waterGoal))
                    .stroke(Color.blue, lineWidth: 30)
                    .rotationEffect(.degrees(-90))
                    .frame(width: 300, height: 300)
                    .animation(.easeInOut(duration: 0.6), value: viewModel.water)
                
                //    Image(viewModel.waterState.imageName)
                //        .resizable()
                //       .scaledToFit()
                //      .frame(width: 70, height: 70)
                //     .foregroundColor(.yellow)
            }
            
            Spacer().frame(height: 100)
            
            VStack {
                Text("\(viewModel.water, specifier: "%.1f") L")
                    .font(.title2)
                    .fontWeight(.bold)
                
                HStack {
                    Stepper("", onIncrement: {
                        //       viewModel.increaseWater(amount: 0.5)
                    }, onDecrement: {
                        //      viewModel.decreaseWater(amount: 0.5)
                    })
                }
                .padding(.trailing, 140)
            }
        }
        .padding()
    }
   // struct waterIntake_Previews: PreviewProvider {
      //  static var previews: some View {
          //  waterIntake(weight: <#Double#>)
        }
   // }
//}
 */
/*struct waterIntake: View {
    @StateObject private var viewModel: waterIntakeViewModel
    
    init(weight: Double) {
        _viewModel = StateObject(wrappedValue: waterIntakeViewModel(weight: weight))
    }
    
    var body: some View {
        VStack {
            Text("Today's Water Intake")
                .font(.body)
                .foregroundColor(.black.opacity(0.6))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(viewModel.waterText)
                .font(.title)
                .bold()
                .foregroundColor(viewModel.water >= viewModel.waterGoal ? .green : .black)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer().frame(height: 100)
            
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 30)
                    .frame(width: 300, height: 300)
                
                Circle()
                    .trim(from: 0, to: CGFloat(viewModel.water / viewModel.waterGoal))
                    .stroke(Color.blue, lineWidth: 30)
                    .rotationEffect(.degrees(-90))
                    .frame(width: 300, height: 300)
                    .animation(.easeInOut(duration: 0.6), value: viewModel.water)
            }
            
            Spacer().frame(height: 100)
            
            VStack {
                Text("\(viewModel.water, specifier: "%.1f") L")
                    .font(.title2)
                    .fontWeight(.bold)
                
                HStack {
                    Stepper("Add Water", onIncrement: {
                        viewModel.increaseWater(amount: 0.5)
                    }, onDecrement: {
                        viewModel.decreaseWater(amount: 0.5)
                    })
                }
                .padding(.trailing, 140)
            }
        }
        .padding()
    }
}
*/

