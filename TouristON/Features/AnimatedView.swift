//
//  Animate.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 30.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class AnimatedView: UIView {

    func pulsate(){

        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.2
        pulse.fromValue = 0.96
        pulse.toValue = 1.0
        pulse.autoreverses = false
        pulse.repeatCount = 0
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        layer.add(pulse, forKey: "pulse")
    }
}
