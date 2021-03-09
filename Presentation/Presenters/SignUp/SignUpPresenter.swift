//
//  SignUpPresenter.swift
//  Presentation
//
//  Created by Gustavo Tiecker on 16/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Domain

public protocol Validation {
    func validate(data: [String : Any]?) -> String?
}

public final class SignUpPresenter {
    
    private let alertView: AlertView
    private let addAccount: AddAccount
    private let loadingView: LoadingView
    private let validation: Validation
    
    public init(alertView: AlertView, addAccount: AddAccount, loadingView: LoadingView, validation: Validation){
        self.alertView = alertView
        self.addAccount = addAccount
        self.loadingView = loadingView
        self.validation = validation
    }
    
    public func signUp(viewModel: SignUpViewModel) {
        if let message = validation.validate(data: viewModel.toJson()) {
            alertView.showMessage(viewModel: AlertViewModel(title: "Falha na validação", message: message))
        } else {
            loadingView.display(viewModel: LoadingViewModel(isLoading: true))
            addAccount.add(addAccountModel: SignUpMapper.toAddAccountModel(viewModel: viewModel)) { [weak self] result in
                guard let self = self else { return }
                self.loadingView.display(viewModel: LoadingViewModel(isLoading: false))
                
                switch result {
                case .failure(_): self.alertView.showMessage(viewModel: AlertViewModel(title: "Erro", message: "Algo inesperado aconteceu, tente novamente em alguns instantes"))
                case .success(_):
                    self.alertView.showMessage(viewModel: AlertViewModel(title: "Sucesso", message: "Conta criada com sucesso"))
                }
            }
        }
    }
}
