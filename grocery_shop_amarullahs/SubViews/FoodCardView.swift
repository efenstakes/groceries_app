//
//  FoodCardView.swift
//  grocery_shop_amarullahs
//
//  Created by MAC on 11/5/21.
//

import SwiftUI

struct FoodCardView: View {
    var food: Food
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            // image
            Image(food.image)
                .resizable()
                .renderingMode(.original)
                .scaledToFill()
                

            
            VStack {
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "cart")
                        .renderingMode(.original)
                        .frame(width: 10, height: 10, alignment: .center)
                        .foregroundColor(.white)
                        .padding(20)
                        .background(
                            Circle().fill( Color.black.opacity(0.5))
                        )
                        .padding([ .trailing, .top ], 10)
                    
                }
                .frame(maxWidth: 180)
                
                    
                Spacer()
            }
                
            // data
            VStack(alignment: .leading, spacing: 6) {
                
                Spacer()
                
                // name
                Text(food.name)
                    .font(.title2)
                    .bold()
                
                // weight
                Text("\(food.weight, specifier: "%.1f") /kg")
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
                
                // price
                Text("$\(food.price, specifier: "%.2f")")
                    .font(.title)
                    .bold()
                
            }
            .frame(maxWidth: 180, alignment: .leading)
            .padding()
            
            
        }
        .clipped()
        .frame(maxWidth: 180, alignment: .leading)
        .frame(height: 300, alignment: .leading)
        .cornerRadius(32)
        .foregroundColor(.black)
        
    }
}

