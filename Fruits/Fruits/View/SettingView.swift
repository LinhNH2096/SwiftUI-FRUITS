//
//  SettingView.swift
//  Fruits
//
//  Created by Nguyễn Hồng Lĩnh on 21/10/2021.
//

import SwiftUI

struct SettingView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: SECTION 1
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturaly low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    } //: BOX
                    
                    // MARK: SECTION 2
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            let titleSwitch = isOnboarding ? "Restarted" : "Restart"
                            Text(titleSwitch.uppercased()).fontWeight(.bold)
                                .foregroundColor(isOnboarding ? .green : .secondary)
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .circular))
                        )
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }

                    
                    // MARK: SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        VStack(spacing: 12) {
                            SettingsRowView(name: "Developer", content: "Lĩnh Nguyễn-Neolab")
                            SettingsRowView(name: "Designer", content: "Robert Petras")
                            SettingsRowView(name: "Compatibility", content: "iOS 14")
                            SettingsRowView(name: "Website", linkLabel: "SwiftUI Master Class", linkDestination: "swiftuimasterclass.com")
                            SettingsRowView(name: "Facebook", linkLabel: "Lĩnh Nguyễn", linkDestination: "fb.com/linhnh36")
                            SettingsRowView(name: "SwiftUI", content: "3.0")
                            SettingsRowView(name: "Version", content: "1.1.0")
                        }
                    }
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
                .padding()
            }
        } //: NAVIGATION
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
    }
}
