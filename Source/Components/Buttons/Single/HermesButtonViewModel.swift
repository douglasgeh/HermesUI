//
//  HermesButtonViewModel.swift
//  HermesUI
//
//  Created by Douglas Gehring on 12/01/22.
//

import Foundation
import RxRelay

public final class HermesButtonViewModel: HermesModel {
    
    //------------------------------------------
    // MARK - Public properties
    //------------------------------------------
    
    let title: String
    let kind: HermesButton.Kind
    let tap: PublishRelay<Void> = .init()
    public let acessibilityIdentifier: String?
    
    //------------------------------------------
    // MARK - Initialization
    //------------------------------------------
    
    public init(title: String,
         kind: HermesButton.Kind,
         acessibilityIdentifier: String? = nil) {
        
        self.title = title
        self.kind = kind
        self.acessibilityIdentifier = acessibilityIdentifier
    }
}
