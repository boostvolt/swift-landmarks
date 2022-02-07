//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Jan Kott on 07.02.22.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                    .padding(.bottom, 10)
                    .listRowSeparator(.hidden)
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                        
                }
                .padding(.bottom, 20)
                .listRowInsets(EdgeInsets())
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
