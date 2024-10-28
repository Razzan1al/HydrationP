
/*import SwiftUI

struct interval: View {
    @State private var startHour = Date()
    @State private var endHour = Date()
    @State private var selectedInterval: Int = 15
    @State private var selectedAmPm = "AM"
    //let amPmOptions = ["AM", "PM"]
    let intervals = [15, 30, 60, 90, 120, 180, 240, 300]
    
    var body: some View {
       NavigationView{
            VStack(alignment: .leading, spacing: 10) {
                Text("Notification Preferences")
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                Text("The start and End hour")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                Text("Specify the start and end date to receive the notifications")
                    .foregroundColor(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                
                VStack{
                    HStack {
                        Text("Start hour")
                        Spacer ().frame(width: 40)
                        DatePicker("", selection: $startHour, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        /* Picker("Select AM/PM", selection: $selectedAmPm) {
                         ForEach(amPmOptions, id: \.self) { option in
                         Text(option).tag(option)
                         }*/
                    }
                    Divider()
                        .frame(height: 2)
                    
                    HStack(alignment: .top) {
                        Text("End hour")
                        Spacer ().frame(width: 30)
                        DatePicker("", selection: $endHour, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,20)
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
                .background(Color.gray.opacity(0.2))
                .padding(.all)
                
                VStack{
                    Text("Notification interval")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("How often would you like to receive notifications within the specified time interval")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .frame(maxHeight: 70)
                    Spacer()
                        .frame(height: 5)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 12), count: 4)) {
                        ForEach(intervals, id: \.self) { interval in
                            Button(action: {
                                selectedInterval = interval
                            }) {
                                Text("\(interval / 60 > 0 ? "\(interval / 60) Hours" : "\(interval) Mins")")
                                    .padding()
                                    .frame(minWidth: 80)
                                    .background(selectedInterval == interval ? Color.lightBLUE : Color.gray.opacity(0.2))
                                    .foregroundColor(selectedInterval == interval ? .white : .black)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding(.vertical, 15)
                    // Spacer()
                    //.frame(height: 50)
                    
                    NavigationLink(destination:WaterIntakeView()){
                        Text("Start")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.lightBLUE)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }}
                    .padding(.top, 20)
                }
                .padding(.all)
                
         }
            .padding(.top,60)
            .navigationBarBackButtonHidden(true)
        }
        // struct interval_P: PreviewProvider {
        //static var previews: some View {
        //  interval()
    }
        #Preview {
            interval()
        }
     */
import SwiftUI

struct IntervalView: View {
    @StateObject private var viewModel = IntervalViewModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Notification Preferences")
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                Text("The start and End hour")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                Text("Specify the start and end date to receive the notifications")
                    .foregroundColor(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                VStack {
                    HStack {
                        Text("Start hour")
                        Spacer().frame(width: 40)
                        
                        DatePicker("", selection: $viewModel.startHour, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Divider()
                        .frame(height: 2)
                    
                    HStack {
                        Text("End hour")
                        Spacer().frame(width: 30)
                        
                        DatePicker("", selection: $viewModel.endHour, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                    }
                }
                .background(Color.gray.opacity(0.2))
                .padding()
                
                VStack {
                    Text("Notification interval")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("How often would you like to receive notifications within the specified time interval")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 12), count: 4)) {
                        ForEach(viewModel.intervals, id: \.self) { interval in
                            Button(action: {
                                viewModel.updateSelectedInterval(interval)
                            }) {
                                Text("\(interval / 60 > 0 ? "\(interval / 60) Hours" : "\(interval) Mins")")
                                    .padding()
                                    .frame(minWidth: 80)
                                    .background(viewModel.selectedInterval == interval ? Color.blue : Color.gray.opacity(0.2))
                                    .foregroundColor(viewModel.selectedInterval == interval ? .white : .black)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding(.vertical, 15)
                    
                    NavigationLink(destination: waterIntakeView()) {
                        Text("Start")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.top, 20)
                .padding()
            }
            .padding(.top, 60)
            .navigationBarBackButtonHidden(true)
        }
    }
}
