import SwiftUI

struct MyDocumentScannerView: View {
    @State private var scannedImages: [UIImage] = []
    @State private var isShowingVNDocumentCameraView = false
    
    var body: some View {
        NavigationView {
            LazyHStack {
                ForEach(scannedImages, id: \.self) { image in
                    VStack {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding()
                    }
                }
            }
            .sheet(isPresented: $isShowingVNDocumentCameraView) {
                VNDocumentCameraViewControllerRepresentable(scanResult: $scannedImages)
            }
            .toolbar {
                ToolbarItem {
                    Button(action: showVNDocumentCameraView) {
                        Image(systemName: "scanner")
                    }
                }
            }
        }
    }
    
    private func showVNDocumentCameraView() {
        isShowingVNDocumentCameraView = true
    }
}
