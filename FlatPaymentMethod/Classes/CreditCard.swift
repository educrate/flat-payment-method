//
//  CreditCard.swift
//  FlatPaymentMethod
//
//  Created by Ampe on 8/6/18.
//

import Foundation

@IBDesignable
open class CreditCard: UIView {
    
    // MARK: Views
    open weak var cardView: UIView!
    
    // MARK: Designable Initalizers
    public convenience init() {
        
        self.init(frame: CGRect.zero)
    }
    
    public override convenience init(frame: CGRect) {
        
        self.init(frame: frame)
    }
    
    // MARK: Programmatic Initalizer
    public init(_ frame: CGRect) {
        
        let cardView = UIView()
        self.cardView = cardView
        
        super.init(frame: frame)
        
        addViews()
        addConstraints()
    }
    
    // MARK: Storyboard Initalizer
    public required init?(coder aDecoder: NSCoder) {
        
        let cardView = UIView()
        self.cardView = cardView
        
        super.init(coder: aDecoder)
        
        addViews()
        addConstraints()
    }
}

extension CreditCard {
    func addViews() {
        
        addSubview(cardView)
    }
    
    func addConstraints() {
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        
        cardView.widthAnchor.constraint(equalTo: cardView.heightAnchor, multiplier: PaymentConstants.creditCardAspectRatio).isActive = true
        
        if frame.width/frame.height >= PaymentConstants.creditCardAspectRatio {
            cardView.topAnchor.constraint(equalTo: topAnchor).isActive = true
            cardView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        } else {
            cardView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
            cardView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        }
    }
}
