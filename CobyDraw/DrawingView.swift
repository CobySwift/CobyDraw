//
//  DrawingView.swift
//  CobyDraw
//
//  Created by COBY_PRO on 2023/08/02.
//

import SwiftUI
import PencilKit

struct DrawingView: UIViewRepresentable {
    class Coordinator: NSObject, PKCanvasViewDelegate {
        var matchManger: MatchManager
        
        init(matchManger: MatchManager) {
            self.matchManger = matchManger
        }
        
        func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
            // TODO: Send the new drawing data
        }
    }
    
    var canvasView = PKCanvasView()
    
    @ObservedObject var matchManager: MatchManager
    @Binding var eraserEnabled: Bool
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 5)
        canvasView.delegate = context.coordinator
        canvasView.isUserInteractionEnabled = matchManager.currentlyDrawing
        
        return canvasView
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(matchManger: matchManager)
    }
    
    func updateUIView(_ uiview: PKCanvasView, context: Context) {
        // TODO: Handle various updates
        
        canvasView.tool = eraserEnabled ? PKEraserTool(.vector) : PKInkingTool(.pen, color: .black, width: 5)
    }
}

struct DrawingView_Previews: PreviewProvider {
    @State static var eraser = false
    static var previews: some View {
        DrawingView(matchManager: MatchManager(), eraserEnabled: $eraser)
    }
}
