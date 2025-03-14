//
//  guidpage.swift
//  appetizers1
//
//  Created by Niloufar Rabiee on 17/10/24.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Form {
                            Picker("My Picker", selection: .constant(0)) {
                                Text("Formalities")
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                                
                                Text("Accommodation")
                                    .padding()
                                    .background(Color.gray.opacity(0.3))
                                    .cornerRadius(10)
                                
                                Text("Transportation")
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                                
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .listRowInsets(.init())
                            .listRowBackground(Color(.secondarySystemBackground))
                    ScrollView {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Naples areas")
                                .font(.title)
                                .bold()
                            
                            // High Budget Zones
                            Text("High budget zones")
                                .font (.system(size: 18))
                                .bold()
                                .padding(.top)
                            
                            zoneCard(name: "Chiaia", safety: 4, transport: 3, budget: 1)
                            zoneCard(name: "Posillipo", safety: 4, transport: 3, budget: 1)
                            zoneCard(name: "Vomero", safety: 5, transport: 4, budget: 1)
                            
                            // Medium Budget Zones
                            Text("Medium budget zones")
                                .font (.system(size: 18))
                                .bold()
                                .padding(.top)
                            
                            zoneCard(name: "Centro Storico", safety: 3, transport: 5, budget: 2)
                            zoneCard(name: "Arenella", safety: 4, transport: 3, budget: 2)
                            zoneCard(name: "Fuorigrotta", safety: 4, transport: 3, budget: 2)
                            zoneCard(name: "Sanità", safety: 2, transport: 3, budget: 3)
                            
                            
                            // Low Budget Zones
                            Text("Low budget zones")
                                .font (.system(size: 18))
                                .bold()
                                .padding(.top)
                            
                            
                            zoneCard(name: "Gianturco", safety: 1, transport: 4, budget: 3)
                            zoneCard(name: "Scampia", safety: 1, transport: 3, budget: 5)
                            zoneCard(name: "Secondigliano", safety: 2, transport: 3, budget: 4)
                            zoneCard(name: "Ponticelli", safety: 2, transport: 4, budget: 3)
                               
                        }
                        .padding()
                    }
                        }
                
                
                // ScrollView for main content
               
            }
            .navigationBarTitle("Guides", displayMode: .inline)
        }
    }
    
    // Helper function to create zone cards
    func zoneCard(name: String, safety: Int, transport: Int, budget: Int) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(name)
                .font(.headline)
                .padding(.vertical, 5)
            
            HStack {
                Text("Safety")
                Spacer()
                starsView(count: safety)
            }
            HStack {
                Text("Transport")
                Spacer()
                starsView(count: transport)
            }
            HStack {
                Text("Budget")
                Spacer()
                starsView(count: budget)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
    
    // Helper function to create stars for ratings
    func starsView(count: Int) -> some View {
        HStack {
            ForEach(0..<5) { index in
                Image(systemName: index < count ? "star.fill" : "star")
                    .foregroundColor(index < count ? Color.yellow : Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
