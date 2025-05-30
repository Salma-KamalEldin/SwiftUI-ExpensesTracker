//
//  PreviewTestingData.swift
//  ExpensesTracker
//
//  Created by Salma Kamal Eldin, Vodafone on 15/05/2025.
//

enum PreviewData {
    static let transaction = Transaction(
        id: 25,
        date: "02/16/2022",
        institution: "Desjardins",
        account: "Visa Desjardins",
        merchant: "STM",
        amount: 6.50,
        type: "debit",
        categoryId: 101,
        category: "Public Transportation",
        isPending: true,
        isTransfer: false,
        isExpense: true,
        isEdited: false
    )
    
    //    static let transactionList = Array(repeating: transaction, count: 10)
    
    static let transactionList: [Transaction] = [
        Transaction(id: 25, date: "02/16/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "STM", amount: 6.50, type: "debit", categoryId: 101, category: "Public Transportation", isPending: true, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 24, date: "02/16/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Copper Branch", amount: 23.86, type: "debit", categoryId: 502, category: "Restaurants", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 23, date: "02/15/2022", institution: "Desjardins", account: "Personal chequing account", merchant: "Payroll", amount: 2000.00, type: "credit", categoryId: 701, category: "Paycheque", isPending: false, isTransfer: false, isExpense: false, isEdited: false),
        Transaction(id: 22, date: "02/14/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Interest Charges", amount: 74.92, type: "debit", categoryId: 402, category: "Finance Charge", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 21, date: "02/04/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Uber.com", amount: 10.35, type: "debit", categoryId: 102, category: "Taxi", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 20, date: "02/03/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Payment", amount: 1000.00, type: "credit", categoryId: 901, category: "Credit Card Payment", isPending: false, isTransfer: true, isExpense: false, isEdited: false),
        Transaction(id: 19, date: "02/03/2022", institution: "Desjardins", account: "Personal chequing account", merchant: "Bill payment - Desjardins Visa Or Modulo", amount: 1000.00, type: "debit", categoryId: 901, category: "Credit Card Payment", isPending: false, isTransfer: true, isExpense: false, isEdited: false),
        Transaction(id: 18, date: "02/02/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Telus Mobility", amount: 61.46, type: "debit", categoryId: 201, category: "Mobile Phone", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 17, date: "02/01/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Amazon", amount: 14.69, type: "debit", categoryId: 602, category: "Home Supplies", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 16, date: "02/01/2022", institution: "Desjardins", account: "Personal chequing account", merchant: "Rent", amount: 800.00, type: "debit", categoryId: 601, category: "Rent", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 15, date: "01/31/2022", institution: "Desjardins", account: "Personal chequing account", merchant: "Costco", amount: 135.28, type: "debit", categoryId: 501, category: "Groceries", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 14, date: "01/31/2022", institution: "Desjardins", account: "Personal chequing account", merchant: "Payroll", amount: 2000.00, type: "credit", categoryId: 701, category: "Paycheque", isPending: false, isTransfer: false, isExpense: false, isEdited: false),
        Transaction(id: 13, date: "01/31/2022", institution: "Desjardins", account: "Personal chequing account", merchant: "Fixed service charges", amount: 7.95, type: "debit", categoryId: 401, category: "Bank Fee", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 12, date: "01/25/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Uber.com", amount: 11.60, type: "debit", categoryId: 102, category: "Taxi", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 11, date: "01/24/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 11.49, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 10, date: "01/24/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Netflix", amount: 16.49, type: "debit", categoryId: 301, category: "Movies & DVDs", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 9, date: "01/21/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "IGA", amount: 50.46, type: "debit", categoryId: 501, category: "Groceries", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 8, date: "01/17/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Interest Charges", amount: 76.23, type: "debit", categoryId: 402, category: "Finance Charge", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 7, date: "01/14/2022", institution: "Desjardins", account: "Personal chequing account", merchant: "Payroll", amount: 2000.00, type: "credit", categoryId: 701, category: "Paycheque", isPending: false, isTransfer: false, isExpense: false, isEdited: false),
        Transaction(id: 6, date: "01/07/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Payment", amount: 1000.00, type: "credit", categoryId: 901, category: "Credit Card Payment", isPending: false, isTransfer: true, isExpense: false, isEdited: false),
        Transaction(id: 5, date: "01/07/2022", institution: "Desjardins", account: "Personal chequing account", merchant: "Bill payment - Desjardins Visa Or Modulo", amount: 1000.00, type: "debit", categoryId: 901, category: "Credit Card Payment", isPending: false, isTransfer: true, isExpense: false, isEdited: false),
        Transaction(id: 4, date: "01/04/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Telus Mobility", amount: 61.46, type: "debit", categoryId: 201, category: "Mobile Phone", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 3, date: "01/04/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 4.59, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 2, date: "01/03/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Uber Eats", amount: 59.96, type: "debit", categoryId: 502, category: "Restaurants", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
        Transaction(id: 1, date: "01/01/2022", institution: "Desjardins", account: "Personal chequing account", merchant: "Rent", amount: 800.00, type: "debit", categoryId: 601, category: "Rent", isPending: false, isTransfer: false, isExpense: true, isEdited: false)
    ]

    
}


