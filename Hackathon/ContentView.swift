
import SwiftUI
import Vision

//struct ContentView: View {
//
//    @State var showingPanel = false
//    var body: some View {
//        VStack {
//            Button("DO it") {
//                showingPanel = true
//            }
//        }.sheet(isPresented: $showingPanel) {
//            ScanSpecialView()
//        }
//
//
//    }
//}
struct ScanSpecialView: View {
    @StateObject var manager = ScanManager()
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {

                    Spacer()
                    Text(manager.latestBarcode)
                    Spacer()

                    CameraView(delegate: manager)
                .onChange(of: manager.latestBarcode, perform: { newValue in
                    print("Saw \(newValue)")
                    dismiss()
                })
                        .frame(height: 280)
                        .cornerRadius(6)
              // .mask(Circle())
                        .padding(4.0)
                       
                }

    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
