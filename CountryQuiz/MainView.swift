//
//  MainView.swift
//  CountryQuiz
//
//  Created by Andrew on 24.05.2025.
//

import SwiftUI

struct MainView: View {
    
    @State private var allToggles: Bool = false
    
    var body: some View {
        VStack {
            Form {
                Section("Какие страны будем учить") {
                    Text("Выбраны все страны (200)")
                }
                Section("Что будем учить") {
                    Toggle("Страна", isOn: $allToggles)
                    Toggle("Флаг", isOn: $allToggles)
                    Toggle("Столица", isOn: $allToggles)
                    Toggle("Локация", isOn: $allToggles)
                }
            }
            .scrollDisabled(true)
            .scrollContentBackground(.hidden)
            .padding(.top, 20)
            
            Spacer()
            Button(action: tapOnBegin) {
                Text("Начать")
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(Color.Common.blackText)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .padding(.horizontal, 20)
        }
        .background(Color.Common.background)
    }
}

// MARK: - Private
private extension MainView {
    func tapOnBegin() {
        print("log: tapped")
    }
}

#Preview {
    MainView()
}
