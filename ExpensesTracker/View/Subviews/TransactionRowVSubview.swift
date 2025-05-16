//
//  TransactionRowVSubview.swift
//  ExpensesTracker
//
//  Created by Salma Kamal Eldin, Vodafone on 15/05/2025.
//

import SwiftUI
import SwiftUIFontIcon

struct TransactionRowVSubview: View {
    var transaction: Transaction
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .frame(width: 40, height: 40)
                .foregroundStyle(.icon.opacity(0.5))
                .overlay {
                    FontIcon.text(.awesome5Solid(code: transaction.icon))
                }
                .padding(.trailing, 8)
            
            VStack(alignment: .leading) {
                Text(transaction.merchant)
                    .bold()
                Text(transaction.category)
                    .font(.footnote)
                Text(transaction.date)
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Text(transaction.signedAmount, format: .currency(code: "USD"))
                .foregroundStyle(transaction.isCredit ? Color.text : .primary)
                .bold()
        }
    }
}

#Preview {
    TransactionRowVSubview(transaction: PreviewData.transaction)
}
