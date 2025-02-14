//
//  Transaction.swift
//  ExpenseTracker
//
//  Created by Hatice Çiğdem Karaca on 23.09.2024.
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID = .init()
    // Properties
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: String) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor
    }
    // Extracting Color Value from tintColor String
    var color: Color {
        return tints.first(where: { $0.color == tintColor })?.value ?? appTint
    }
    
    
}

// Sample Transactions for UI Building

var sampleTransactions: [Transaction] = [
    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 129, dateAdded: .now, category: .expense, tintColor: String()),
    
        .init(title: "Apple Music", remarks: "Subscription", amount: 10.99, dateAdded: .now, category: .expense, tintColor: String()),
    
        .init(title: "iCloud+", remarks: "Subscription", amount: 0.99, dateAdded: .now, category: .expense, tintColor: String()),
    
        .init(title: "Payment", remarks: "Payment Received!", amount: 2499, dateAdded: .now, category: .expense, tintColor: String()),
]
