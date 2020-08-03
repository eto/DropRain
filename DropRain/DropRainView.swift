import Foundation
import AppKit
import ScreenSaver
class DropRainScreenSaverView: ScreenSaverView {
    let view = DropRainView()
    override init?(frame: CGRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        self.animationTimeInterval = 1 / 30.0
        addSubview(view)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func startAnimation() {
        super.startAnimation()
    }
    override func stopAnimation() {
        super.stopAnimation()
    }
    override func draw(_ rect: NSRect) {
        super.draw(rect)
        var squareFrame = NSRect.zero
        squareFrame.size = NSSize(width: 150, height: 150)
        squareFrame.origin.x = (rect.width - squareFrame.width) / 2.0
        squareFrame.origin.y = (rect.height - squareFrame.height) / 2.0
        view.frame = squareFrame
    }
    override func animateOneFrame() {
        view.rotate(byDegrees: 1)
    }
}
class DropRainView: NSView {
    init() {
        super.init(frame: .zero)
        wantsLayer = true
        layer?.backgroundColor = CGColor.init(red:0.9, green:0.9, blue:0.9, alpha: 1.0)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
