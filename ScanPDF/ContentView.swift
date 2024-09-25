import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = PDFScannerViewModel()
    
    var body: some View {
        MyDocumentScannerView()
    }
}

#Preview {
    ContentView()
}
