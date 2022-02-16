//
//  ContentView.swift
//  SpellingBee
//
//  Created by Russell Gordon on 2022-02-16.
//

import AVFoundation
import SwiftUI

//button style
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
            .background(configuration.isPressed ? Color.purple.opacity(0.5) : Color.purple.opacity(0.07))
            .foregroundColor(.black)
            .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.purple, lineWidth: 2)
            )
            .scaleEffect(configuration.isPressed ? 1.06 : 1)
            .animation(.easeOut(duration: 0.3), value: configuration.isPressed)
    }
}

struct ContentView: View {
    
    // MARK: Stored properties
    @State var currentItem = itemsToSpell.randomElement()!
    @State var inputGiven = ""
    
    @State var answerChecked = false
    @State var answerCorrect = false
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            
            Image(currentItem.imageName)
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    
                    // Create the word to be spoken (an utterance) and set
                    // characteristics of how the voice will sound
                    let utterance = AVSpeechUtterance(string: currentItem.word)
                    
                    // See a list of available language codes and their corresponding
                    // voice names and genders here:
                    // https://www.ikiapps.com/tips/2015/12/30/setting-voice-for-tts-in-ios
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
                    
                    // How fast the utterance will be spoken
                    utterance.rate = 0.5
                    
                    // Synthesize (speak) the utterance
                    let synthesizer = AVSpeechSynthesizer()
                    synthesizer.speak(utterance)
                    
                }
            TextField("Enter your answer here",
                      text: $inputGiven)
                .multilineTextAlignment(.center)
                .font(.title)
            
            ZStack {
                Button(action: {
                    
                    // Answer has been checked
                    answerChecked = true
                    
                    // Check the answer!
                    if inputGiven.lowercased() == currentItem.word {
                        answerCorrect = true
                    } else {
                        answerCorrect = false
                    }
                }, label: {
                    Text("Check Answer")
                        .font(.title)
                })
                    .padding()
                    .buttonStyle(GrowingButton())
                // Only show this button when an answer has not been checked
                    .opacity(answerChecked == false ? 1.0 : 0.0)
                
                Button(action: {
                    // Generate a new question
                    currentItem = itemsToSpell.randomElement()!
                    
                    answerChecked = false
                    answerCorrect = false
                    
                    // Reset the input field
                    inputGiven = ""
                }, label: {
                    Text("New Question")
                        .font(.title)
                })
                    .padding()
                    .buttonStyle(GrowingButton())
                // Only show this button when an answer has been checked
                    .opacity(answerChecked == true ? 1.0 : 0.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
