//
//  FoodDetailsView.swift
//  grocery_shop_amarullahs
//
//  Created by MAC on 11/5/21.
//

import SwiftUI

struct FoodDetailsView: View {
    let food: Food
    
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false) {
                
                // Image
                Image(food.image)
                    .resizable()
                    .frame(height: geo.size.height/1.6, alignment: .center)
                    .cornerRadius(32)
                    .ignoresSafeArea(.all)
                
                
                VStack(alignment: .leading, spacing: 10 ) {
                    
                    // name
                    Text(food.name)
                        .font(.largeTitle)
                        .bold()
                        .padding(.top)
                    
                    
                    // rating
                    HStack {
                        ForEach(1..<6) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .center)
                                .foregroundColor(.orange)
                        }
                        
                        Text("(105)")
                            .font(.body)
                            .foregroundColor(.secondary)
                    }
                    
                    // add qty & price
                    HStack {
                        
                        HStack {
                            
                            Button(action: {
                                
                            }) {
                                Image(systemName: "minus")
                                    .resizable()
                                    .frame(width: 20, height: 2, alignment: .center)
                            }
                            
                            Text("1")
                                .font(.body)
                                .bold()
                                .padding(.horizontal, 20)
                            
                            Button(action: {
                                
                            }) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 20, height: 20, alignment: .center)
                            }
                            
                        }
                        .padding()
                        .background(Color.gray.opacity(0.6))
                        .cornerRadius(20)
                        .foregroundColor(.black)
                        
                        Spacer()
                        
                        // price
                        Text("$\(food.price, specifier: "%.2f")")
                            .font(.title)
                            .bold()
                        
                    }
                    .padding(.vertical)
                    
                    
                    // description
                    Text("Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .padding(.vertical)
                    
                    
                    Button {
                        print("Add to cart")
                    } label: {
                        Text("Add To Cart")
                            .font(.body)
                            .bold()
                            .padding()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.red.opacity(0.8))
                            )
                    }

                    
                }
                .padding()
                
            }
            .ignoresSafeArea(.all)
            .navigationBarBackButtonHidden(true)
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
                            Circle().stroke(Color.red, lineWidth: 1)
                        )
                    .foregroundColor(.red.opacity(0.8))
            )
            
        }
    }
}
