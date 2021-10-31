//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Nguyễn Hồng Lĩnh on 31/10/2021.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: BODY
    var body: some View {
        
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel,
                          let link = linkDestination,
                          let url = URL(string: "https://" + link){
                    Link(linkLabel, destination: url)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        } //: HSTACK
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer",
                            content: "Linh Nguyen Neo-lab")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            SettingsRowView(name: "Website",
                            linkLabel: "SwiftUI Master Class",
                            linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
