//
//  TransactionsVM.swift
//  ExpensesTracker
//
//  Created by Salma Kamal Eldin, Vodafone on 15/05/2025.
//

import Combine
import Foundation

typealias TransactionGroup = [String: [Transaction]]

class TransactionsVM: ObservableObject {
    @Published var transactions: [Transaction] = []
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        fetchTransactions()
    }
    
    private func fetchTransactions() {
        guard let url = URL(string: "https://designcode.io/data/transactions.json") else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap({ (data, response) in
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    dump(response)
                    throw URLError(.badServerResponse)
                }
                return data
            })
            .decode(type: [Transaction].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { result in
                if case let .failure(error) = result {
                    fatalError("couldn't fetch transactions: \(error.localizedDescription)")
                }
            } receiveValue: { [weak self] value in
                dump(value)
                self?.transactions = value
            }
            .store(in: &cancellables)
    }
    
    func getGroupedTransactions() -> TransactionGroup {
        let sorted = transactions.sorted { $0.date > $1.date }
        return Dictionary(grouping: sorted, by: { $0.month })
    }
}
