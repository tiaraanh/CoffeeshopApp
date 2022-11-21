//
//  CoffeeshopListView.swift
//  CoffeeshopApp
//
//  Created by Tiara H on 19/11/22.
//

import SwiftUI

struct CoffeeshopListView: View {
    
    // MARK: - PROPERTIES
    
    @State private var searchText: String = ""
    
    private var coffeeshopResult: [CoffeeshopModel] {
        let result = CoffeeshopModel.CoffeeshopProvider.all()
        
        // search text filter
        if searchText.isEmpty {
            return result
        } else {
            return result.filter {
                $0.name.lowercased().contains(searchText.lowercased())
//                || $0.location.lowercased().contains(searchText)
            }
        }
    }
    
    // text search model
    private var suggestResult: [CoffeeshopModel] {
        if searchText.isEmpty {
            return []
        } else {
            return coffeeshopResult
        }
    }
    
    // MARK: - BODY
    var body: some View {
        
        // to push need to embed in nav stack
        NavigationStack {
            List(coffeeshopResult) { result in
                
                // push controller
                NavigationLink(destination: {
                    CoffeeshopDetailView(coffeeshopDetails: result)
                }) {
                    HStack {
                        Image("\(result.image)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        
                        VStack(alignment: .leading) {
                            Text("\(result.name)")
                                .font(.callout)
                                .fontWeight(.bold)
                                .padding(2)
                                
                            Text("\(result.location)")
                                .font(.callout)
                                .foregroundColor(.gray)
                                .fontWeight(.bold)
                                .padding(2)
                            
                            Text("Rating: 4/5")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .fontWeight(.light)
                                .padding(2)
                                
                        }
                        
                    }
                }
                .navigationTitle("Coffee Shop")
                
                // searchBar
                .searchable(
                    text: $searchText,
                    // isHide=false
                    placement: .navigationBarDrawer(displayMode: .always),
                    // placeholder
                    prompt: "search coffeshops"
                ) {
                    // add another filter to searchResult
                    ForEach(suggestResult) { result in
                        Text("Looking for \(result.name)?")
                            .searchCompletion(result.name)
                    }
                }
                
            }
           
            
        } // MARK : NAVIGATION
        
    }
}

// MARK: - PREVIEW
struct CoffeeshopListView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeshopListView()
    }
}
