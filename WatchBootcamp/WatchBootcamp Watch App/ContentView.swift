//
//  ContentView.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 23/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        TextBootcamp()
                    } label: {
                        Text("Text")
                    }
                    
                    NavigationLink {
                        LabelBootcamp()
                    } label: {
                        Text("Label")
                    }
                    
                    NavigationLink {
                        LabledContentBootcamp()
                    } label: {
                        Text("LabledContent")
                    }
                    
                    NavigationLink {
                        ButtonBootcamp()
                    } label: {
                        Text("Button")
                    }
                    
                    NavigationLink {
                        ImageBootcamp()
                    } label: {
                        Text("Image")
                    }
                    
                    NavigationLink {
                        SliderBootcamp()
                    } label: {
                        Text("Slider")
                    }
                    
                    NavigationLink {
                        StepperBootcamp()
                    } label: {
                        Text("Stepper")
                    }

                    
                    NavigationLink {
                        PickerBootcamp()
                    } label: {
                        Text("Picker")
                    }
                    
                    NavigationLink {
                        ProgressViewBootcamp()
                    } label: {
                        Text("ProgressView")
                    }
                    
                    NavigationLink {
                        GaugeBootCamp()
                    } label: {
                        Text("Gauge")
                    }
                    
                    NavigationLink {
                        ToggleBootcamp()
                    } label: {
                        Text("Toggle")
                    }

                    NavigationLink {
                        TextFieldBootcamp()
                    } label: {
                        Text("TextField")
                    }
                    
                    NavigationLink {
                        SecureFieldBootcamp()
                    } label: {
                        Text("SecureField")
                    }

                    
                    NavigationLink {
                        CustomfontBootcamp()
                    } label: {
                        Text("Customfont")
                    }
                    
                    NavigationLink {
                        ChartBootcamp()
                    } label: {
                        Text("Chart")
                    }

                    NavigationLink {
                        MapBootcamp()
                    } label: {
                        Text("Map")
                    }
                    
                    NavigationLink {
                        SceneBootcamp()
                    } label: {
                        Text("SKScene")
                    }

                } header: {
                    Text("Views")
                }
                
                Section {
                    NavigationLink {
                        PlayVideoBootcamp()
                    } label: {
                        Text("Video")
                    }
                    
                    NavigationLink {
                        PlayAudioBootcamp()
                    } label: {
                        Text("Audio")
                    }
                    
                    NavigationLink {
                        NowPlayingBootcamp()
                    } label: {
                        Text("NowPlaying")
                    }
                } header: {
                    Text("Media")
                }
                
                Section {
                    NavigationLink {
                        NavigationLinkBootcamp()
                    } label: {
                        Text("NavigationLink")
                    }
                    
                    NavigationLink {
                        ModelBootcamp()
                    } label: {
                        Text("Model")
                    }
                    
                    NavigationLink {
                        TabViewBootcamp()
                    } label: {
                        Text("TabView")
                    }
                    
                    NavigationLink {
                        AlertBootcamp()
                    } label: {
                        Text("Alert")
                    }

                } header: {
                    Text("Transitions")
                }
                
                Section {
                    NavigationLink {
                        DigitalCrownBootcamp()
                    } label: {
                        Text("DigitalCrown")
                    }
                    
                    NavigationLink {
                        HapticBootcamp()
                    } label: {
                        Text("Haptics")
                    }
                    
                    NavigationLink {
                        TapLocationBootcamp()
                    } label: {
                        Text("TapLocation")
                    }
                    
                    NavigationLink {
                        MotionSensorBootcamp()
                    } label: {
                        Text("MotionSensor")
                    }

                } header: {
                    Text("Others")
                }

            }
        }
    }
}

#Preview {
    ContentView()
}

