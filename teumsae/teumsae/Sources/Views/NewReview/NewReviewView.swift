//
//  NewReviewView.swift
//  teumsae
//
//  Created by Subeen Park on 2021/11/03.
//
// Reference: https://blckbirds.com/post/voice-recorder-app-in-swiftui-1/

import SwiftUI

struct NewReviewView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        VStack { // VSTACK 0
            if audioRecorder.recording == false { // IF1 : START RECORDING
                Button(action: {
                    self.audioRecorder.startRecording()
                    print("Start recording")
                }) {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipped()
                        .foregroundColor(.red)
                        .padding(.bottom, 40)
                }
            }
            else { // IF1-ELSE : STOP RECORDING
                Button(action: {
                    self.audioRecorder.stopRecording()
                    print("Stop recording")
                }) {
                    Image(systemName: "stop.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipped()
                        .foregroundColor(.red)
                        .padding(.bottom, 40)
                }
            } // END OF IF1 CLAUSE
        } // END OF VSTACK 0
    }
}

struct NewReviewView_Previews: PreviewProvider {
    static var previews: some View {
        NewReviewView(audioRecorder: AudioRecorder())
    }
}
