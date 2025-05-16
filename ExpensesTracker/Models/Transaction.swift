//
//  Transaction.swift
//  ExpensesTracker
//
//  Created by Salma Kamal Eldin, Vodafone on 15/05/2025.
//

import Foundation
import SwiftUIFontIcon

struct Transaction: Decodable, Identifiable, Hashable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    let merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    let categoryId: Int
    let category: String
    let isPending: Bool
    let isTransfer: Bool
    let isExpense: Bool
    let isEdited: Bool
    
    var signedAmount: Double {
        type == TransactionType.debit.rawValue ? -amount : amount
    }
    
    var icon: FontAwesomeCode {
        guard let icon = Category.list.first(where: { categoryId == $0.id })?.icon else {
            return .question_circle
        }
        return icon
    }
    
    var isCredit: Bool {
        type == TransactionType.credit.rawValue
    }
    
    var month: String {
        date.date.formatted(.dateTime.year().month(.wide))
    }
}

enum TransactionType: String {
    case debit
    case credit
}

enum CategoryName: String {
    case autoAndTransport = "Auto & Transport"
    case billsAndUtilities = "Bills & Utilities"
    case entertainment = "Entertainment"
    case feesAndCharges = "Fees & Charges"
    case foodAndDining = "Food & Dining"
    case home = "Home"
    case income = "Income"
    case shopping = "Shopping"
    case transfer = "Transfer"

    case publicTransportation = "Public Transportation"
    case taxi = "Taxi"
    case mobilePhone = "Mobile Phone"
    case moviesAndDVDs = "Movies & DVDs"
    case bankFee = "Bank Fee"
    case financeCharge = "Finance Charge"
    case groceries = "Groceries"
    case restaurants = "Restaurants"
    case rent = "Rent"
    case homeSupplies = "Home Supplies"
    case paycheque = "Paycheque"
    case software = "Software"
    case creditCardPayment = "Credit Card Payment"
}

struct Category {
    let id: Int
    let name: String
    let icon: FontAwesomeCode
    var mainCategoryId: Int?
    
    static let list: [Category] = [
        autoAndTransport,
        billsAndUtilities,
        entertainment,
        feesAndCharges,
        foodAndDining,
        home,
        income,
        shopping,
        transfer,
        
        publicTransportation,
        taxi,
        mobilePhone,
        moviesAndDVDs,
        bankFee,
        financeCharge,
        groceries,
        restaurants,
        rent,
        homeSupplies,
        paycheque,
        software,
        creditCardPayment
    ]
}

extension Category {
    static let autoAndTransport = Category(id: 1, name: "Auto & Transport", icon: .car_alt)
    static let billsAndUtilities = Category(id: 2, name: "Bills & Utilities", icon: .file_invoice_dollar)
    static let entertainment = Category(id: 3, name: "Entertainment", icon: .film)
    static let feesAndCharges = Category(id: 4, name: "Fees & Charges", icon: .hand_holding_usd)
    static let foodAndDining = Category(id: 5, name: "Food & Dining", icon: .hamburger)
    static let home = Category(id: 6, name: "Home", icon: .home)
    static let income = Category(id: 7, name: "Income", icon: .dollar_sign)
    static let shopping = Category(id: 8, name: "Shopping", icon: .shopping_cart)
    static let transfer = Category(id: 9, name: "Transfer", icon: .exchange_alt)

    static let publicTransportation = Category(id: 101, name: "Public Transportation", icon: .bus, mainCategoryId: 1)
    static let taxi = Category(id: 102, name: "Taxi", icon: .taxi, mainCategoryId: 1)
    static let mobilePhone = Category(id: 201, name: "Mobile Phone", icon: .mobile_alt, mainCategoryId: 2)
    static let moviesAndDVDs = Category(id: 301, name: "Movies & DVDs", icon: .film, mainCategoryId: 3)
    static let bankFee = Category(id: 401, name: "Bank Fee", icon: .hand_holding_usd, mainCategoryId: 4)
    static let financeCharge = Category(id: 402, name: "Finance Charge", icon: .hand_holding_usd, mainCategoryId: 4)
    static let groceries = Category(id: 501, name: "Groceries", icon: .shopping_basket, mainCategoryId: 5)
    static let restaurants = Category(id: 502, name: "Restaurants", icon: .utensils, mainCategoryId: 5)
    static let rent = Category(id: 601, name: "Rent", icon: .house_user, mainCategoryId: 6)
    static let homeSupplies = Category(id: 602, name: "Home Supplies", icon: .lightbulb, mainCategoryId: 6)
    static let paycheque = Category(id: 701, name: "Paycheque", icon: .dollar_sign, mainCategoryId: 7)
    static let software = Category(id: 801, name: "Software", icon: .icons, mainCategoryId: 8)
    static let creditCardPayment = Category(id: 901, name: "Credit Card Payment", icon: .exchange_alt, mainCategoryId: 9)
}

extension String {
    var date: Date! {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.date(from: self)
    }
}
