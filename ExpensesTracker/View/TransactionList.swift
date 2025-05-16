//
//  TransactionList.swift
//  ExpensesTracker
//
//  Created by Salma Kamal Eldin, Vodafone on 16/05/2025.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transactionsVM: TransactionsVM
    
    var body: some View {
        VStack {
            List {
                ForEach(Array(transactionsVM.getGroupedTransactions()), id: \.key) { month, transactions in
                    
                    Section {
                        ForEach(transactions) {
                            TransactionRowVSubview(transaction: $0)
                        }
                    } header: {
                        Text(month)
                    }
                }
            }
            .navigationTitle("Transactions")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.grouped)
            .background(Color.background)
        }
    }
}

#Preview {
    let transactionsVM: TransactionsVM = {
        let vm = TransactionsVM()
        vm.transactions = PreviewData.transactionList
        return vm
    }()
    
    NavigationView {
        TransactionList()
            .environmentObject(transactionsVM)
    }
}
