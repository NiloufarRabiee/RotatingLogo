//
//  guid for places.swift
//  appetizers1
//
//  Created by Niloufar Rabiee on 17/10/24.
//

import SwiftUI

struct FormalitiesView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Top Tabs
                Form {
                    Picker("My Picker", selection: .constant(0))
                    { Text("Formalities")
                            .padding()
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(10)
                        
                        Text("Accommodation")
                            .padding()
                            .background(Color.gray.opacity(0.2))
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
                            formalitiesCard(icon: "house.fill", title: "Permesso di Soggiorno", description: "If you are staying in Naples for more than 90 days, the permesso di soggiorno is required...")
                            
                            formalitiesCard(icon: "person.crop.square.fill.and.at.rectangle", title: "Codice Fiscale", description: "Obtaining a Codice Fiscale is essential for staying in Naples. Apply as soon as possible...")
                            
                            formalitiesCard(icon: "creditcard.fill", title: "Bank Account", description: "Opening a local financial account is important for managing your finances while living in Naples...")
                            
                            formalitiesCard(icon: "phone.fill", title: "Italian SIM", description: "Acquiring a local mobile service is crucial for staying connected in Naples, ensuring access to calls, data...")
                        }
                        .padding()
                    }
                }
                
                // ScrollView for main content
                
            }
            .navigationBarTitle("Guides", displayMode: .inline)
        }
    }
    
    // Helper function to create formalities cards
    func formalitiesCard(icon: String, title: String, description: String) -> some View {
        HStack(alignment: .top) {
            Image(systemName: icon)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)
                .padding(.trailing, 10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(3)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct FormalitiesView_Previews: PreviewProvider {
    static var previews: some View {
        FormalitiesView()
    }
}
