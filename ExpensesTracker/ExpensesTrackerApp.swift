//
//  ExpensesTrackerApp.swift
//  ExpensesTracker
//
//  Created by Salma Kamal Eldin, Vodafone on 15/05/2025.
//

import SwiftUI

@main
struct ExpensesTrackerApp: App {
    @StateObject var transactions = TransactionsVM()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactions)
        }
    }
}
