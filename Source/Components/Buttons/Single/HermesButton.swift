//
//  HermesButton.swift
//  HermesUI
//
//  Created by Douglas Gehring on 12/01/22.
//

import UIKit
import RxSwift

public final class HermesButton: UIButton { }

//------------------------------------------
// MARK - Public methods
//------------------------------------------

extension HermesButton {
  
    public func configure(with viewModel: HermesButtonViewModel) {
        setTitle(viewModel.title, for: .normal)
        setup(forKind: viewModel.kind)
    }
}

//------------------------------------------
// MARK - Private methods
//------------------------------------------

extension HermesButton {
    
    private func setup(forKind kind: Kind) {
        switch kind {
        case let .outlined(color):
            setupOutlined(for: color)
        case let .solid(color):
            setupSolid(for: color)
        }
    }
    
    private func setupOutlined(for color: HermesColor) {
        layer.borderWidth = 2.0
        layer.borderColor = color.cgColor
        setTitleColor(color, for: .normal)
        backgroundColor = HermesBase.Colors.transparent
        layer.cornerRadius = frame.height / 2
    }
    
    private func setupSolid(for color: HermesColor) {
        layer.borderColor = HermesBase.Colors.transparent.cgColor
        setTitleColor(HermesBase.Colors.primary, for: .normal)
        layer.borderWidth = 0.0
        backgroundColor = color
        layer.cornerRadius = frame.height / 2
    }
}
