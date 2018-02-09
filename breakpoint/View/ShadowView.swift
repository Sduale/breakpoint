//
//  ShadowView.swift
//  breakpoint
//
//  Created by nopcallowed on 2/9/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        // Creates a shadow behind the view to make it look better
        self.layer.shadowOpacity = 0.90
        self.layer.shadowRadius = 10
        self.layer.shadowColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        super.awakeFromNib()
    }
}
