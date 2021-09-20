//
//  ForgotPasswordView.swift
//  classOrder
//
//  Created by Santiago Varela Mejia on 19/09/21.
//

import Combine
import Foundation

protocol ForgotPasswordViewModel {
    func sendPasswordReset()
    var service: ForgotPasswordService { get }
    var email: String { get }
    init(service: ForgotPasswordService)
}

final class ForgotPasswordViewModelImp: ObservableObject, ForgotPasswordViewModel {
    @Published var email: String = ""
    
    let service: ForgotPasswordService
    
    private var subscription = Set<AnyCancellable>()
    
    init(service: ForgotPasswordService) {
        self.service = service
    }
    
    func sendPasswordReset() {
        service
            .sendPasswordReset(to: email)
            .sink { res in
                switch res {
                case .failure(let err):
                    print("Failed: \(err)")
                default: break
                }
            } receiveValue: {
                print("Sent password reset request")
            }
            .store(in: &subscription)
    }
}
