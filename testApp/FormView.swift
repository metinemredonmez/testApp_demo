//
//  FormView.swift
//  testApp
//
//  Created by emre on 5.02.2023.
//

import SwiftUI

struct FormView: View {

    @State var nameSurname: String = ""
    @State var phoneNumber: String = ""
    @State var isActive: Bool = true
    @State var notificationEnable: Bool = false
    @State private var pickerMode = 0
    var optionPicker = ["Always", "Only When Using", "While Locked", "Never"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("User ınfo")){
                    TextField("Name- Surname", text: $nameSurname)
                    TextField("Phone Number", text: $phoneNumber)
                    Toggle(isOn: $isActive) {
                        Text("The Account Is Active")
                    }
                }

                Section(header: Text("Notifications")) {
                    Toggle(isOn: $notificationEnable) {
                        Text("Activated")
                    }

                    Picker(selection: $pickerMode, label: Text("Previews")) {
                        ForEach(0..<optionPicker.count) {
                            Text(self.optionPicker[$0])
                        }
                    }
                }

                Section(header: Text("About")) {
                    HStack {
                        Text("Software Version")
                        Spacer()
                        Text("14.3")
                    }
                }

                Section(header: Text("Clear")) {
                    Button(action: {
                        print("Starting")
                    }) {
                        Text("Reset")
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}


struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
