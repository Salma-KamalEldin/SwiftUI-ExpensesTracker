//
//  TransactionListSubview.swift
//  ExpensesTracker
//
//  Created by Salma Kamal Eldin, Vodafone on 15/05/2025.
//

import SwiftUI

struct RecentTransactionsSubview: View {
    @EnvironmentObject var transactionsVM: TransactionsVM
    
    let noOfShowItems = 5
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Recent Transactions")
                    .bold()
                Spacer()
                NavigationLink(destination: {
                    TransactionList()
                }, label: {
                    Text("See All")
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.text)
                })
                .foregroundStyle(.text)
                .padding()
            }
            
            VStack {
                ForEach(Array(transactionsVM.transactions.prefix(noOfShowItems).enumerated()), id: \.element) { index, item in
                    TransactionRowVSubview(transaction: item)
                    
                    Divider()
                        .opacity((index < noOfShowItems - 1) ? 1 : 0)
                }
            }
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .gray, radius: 8)
        
    }
}

#Preview {
    let transactionsVM: TransactionsVM = {
        let vm = TransactionsVM()
        vm.transactions = PreviewData.transactionList
        return vm
    }()
    
    RecentTransactionsSubview().environmentObject(transactionsVM)
}
