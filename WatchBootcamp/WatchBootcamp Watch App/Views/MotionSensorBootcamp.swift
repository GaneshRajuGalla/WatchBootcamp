//
//  MotionSensorBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI
import CoreMotion

struct MotionSensorBootcamp: View {
    
    // MARK: - Properties
    @StateObject private var manager = MotionSensorManager()
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Acceleration")
                Text("x: \(manager.accx)")
                Text("y: \(manager.accy)")
                Text("z: \(manager.accz)")
                Text("Rotation Rate")
                Text("x: \(manager.rotx)")
                Text("y: \(manager.roty)")
                Text("z: \(manager.rotz)")
                
                Button(action: {
                    if manager.isStarted{
                        manager.stopMotion()
                    }else{
                        manager.startMotion()
                    }
                }, label: {
                    Text(manager.isStarted ?  "Stop" : "Start")
                })
            }
        }
    }
}

#Preview {
    MotionSensorBootcamp()
}


class MotionSensorManager:NSObject,ObservableObject{
    
    let motionManager = CMMotionManager()
    
    @Published var isStarted:Bool = false
    
    @Published var accx:String = "0.0"
    
    @Published var accy:String = "0.0"
    
    @Published var accz:String = "0.0"
    
    @Published var rotx:String = "0.0"
    
    @Published var roty:String = "0.0"
    
    @Published var rotz:String = "0.0"
    
    
    public func startMotion(){
        if motionManager.isDeviceMotionAvailable{
            motionManager.deviceMotionUpdateInterval = 0.5
            motionManager.startDeviceMotionUpdates(to: OperationQueue.current!) { (motion:CMDeviceMotion?,error:Error?) in
                //guard let deviceMotion = motion else{return}
                self.updateMotionData(deviceMotion: motion!)
            }
        }
        isStarted = true
    }
    
    public func stopMotion(){
        isStarted = false
        motionManager.stopDeviceMotionUpdates()
    }
    
    private func updateMotionData(deviceMotion:CMDeviceMotion){
        accx = String(deviceMotion.userAcceleration.x)
        
        accy = String(deviceMotion.userAcceleration.y)
        
        accz = String(deviceMotion.userAcceleration.z)
        
        rotx = String(deviceMotion.rotationRate.x)
        
        roty = String(deviceMotion.rotationRate.y)
        
        rotz = String(deviceMotion.rotationRate.z)
    }
}
