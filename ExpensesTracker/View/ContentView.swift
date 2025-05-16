//
//  ContentView.swift
//  ExpensesTracker
//
//  Created by Salma Kamal Eldin, Vodafone on 15/05/2025.
//

import SwiftUI

enum Icon {
    case notification
    
    var name: String {
        switch self {
        case .notification:
            return "bell.badge"
        }
    }
}

struct ContentView: View {
    @EnvironmentObject var transactionsVM: TransactionsVM
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
                    RecentTransactionsSubview()
                }
                .padding()
            }
            .frame(maxWidth: .infinity)
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Image(systemName: Icon.notification.name)
                        .symbolRenderingMode(.monochrome)
                        .foregroundStyle(.icon)
                }
            }
            
        }
        // use stack navigation style to force using push/pop machanism even on MacOS and iPadOS (avoid side bar)
        .navigationViewStyle(.stack)
        .accentColor(.primary)
    }
}

#Preview {
    let transactionsVM: TransactionsVM = {
        let vm = TransactionsVM()
        vm.transactions = PreviewData.transactionList
        return vm
    }()
    
    ContentView()
        .environmentObject(transactionsVM)
}
