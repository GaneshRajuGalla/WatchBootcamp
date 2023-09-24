//
//  SceneBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI
import SceneKit

struct SceneBootcamp: View {
    var body: some View {
        SceneView(scene: makeScene())
    }
    
    private func makeScene() -> SCNScene{
        let scene = SCNScene(named: "ship.scn", inDirectory: "art.scnassets/ship")
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene?.rootNode.addChildNode(cameraNode)
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 2)
        
        let ship = scene?.rootNode.childNodes.first!
        ship?.runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 1, z: 0, duration: 1)))
        
        return scene!
    }
}

#Preview {
    SceneBootcamp()
}
