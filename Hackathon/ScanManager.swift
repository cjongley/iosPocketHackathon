import AVFoundation
import Vision


class ScanManager: NSObject, ObservableObject, AVCaptureVideoDataOutputSampleBufferDelegate {
    
    @Published var latestBarcode = ""

    lazy var detectBarcodeRequest = VNDetectBarcodesRequest { request, error in
            guard let barcodes = request.results as? [VNBarcodeObservation] else { return }
            for barcode in barcodes {
                DispatchQueue.main.async {
                    self.latestBarcode = barcode.payloadStringValue!
                }
                
            }
        }


    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer,
                      from connection: AVCaptureConnection) {

            if let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) {
                
                let imageRequestHandler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer, orientation: .right)
                try? imageRequestHandler.perform([detectBarcodeRequest])
                
            }
        }
}
