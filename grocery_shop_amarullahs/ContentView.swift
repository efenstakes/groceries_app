//
//  ContentView.swift
//  grocery_shop_amarullahs
//
//  Created by MAC on 11/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                Text("Lest search your fruits")
                    .font(.title)
                    .bold()
                
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("search your fruits", text: $searchText)
                }
                .padding()
                .foregroundColor(.gray)
                .background(
                    Color.gray.opacity(0.3)
                )
                .cornerRadius(16)
                .padding(.vertical)
                
                
                // list of items
                LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                    ForEach(foods) { food in
                        
                        NavigationLink(
                            destination: FoodDetailsView(food: food)
                    ) {
                            FoodCardView(food: food)
                        }
                        
                    }
                }
                
                
                
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 10, height: 20, alignment: .center),
                trailing:
                    Image(systemName: "bag")
                    .resizable()
                    .frame(width: 16, height: 20, alignment: .center)
                    .padding(10)
                    .overlay(
                        Circle().stroke(Color.black, lineWidth: 1)
                    )
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
