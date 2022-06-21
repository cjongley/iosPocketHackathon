import SwiftUI
import AVFoundation


class CameraUIView: UIView {
    let captureSession = AVCaptureSession()
    var previewLayer: AVCaptureVideoPreviewLayer!

    init(delegate: ScanManager) {
        super.init(frame: .zero)
        backgroundColor = .blue
        
        let camera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back)
            let device = try! AVCaptureDeviceInput(device: camera!)
            captureSession.addInput(device)
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        layer.addSublayer(previewLayer!)

        previewLayer.connection?.videoOrientation = .landscapeRight
        previewLayer.videoGravity = .resizeAspectFill

        
        let videoDataOutput = AVCaptureVideoDataOutput()
        let videoDataOutputQueue = DispatchQueue.global(qos: .background)
        videoDataOutput.setSampleBufferDelegate(delegate, queue: videoDataOutputQueue)
        captureSession.addOutput(videoDataOutput)
        
        captureSession.startRunning()
        
    }

    override func layoutSubviews() {
        previewLayer.frame = bounds
    }

    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}


struct CameraView: UIViewRepresentable {
    
    var delegate: ScanManager
    
    func makeUIView(context: Context) -> CameraUIView {
        return CameraUIView(delegate: delegate)
    }
    
    func updateUIView(_ uiView: CameraUIView, context: Context) {
        uiView.layoutSubviews()
    }
}
