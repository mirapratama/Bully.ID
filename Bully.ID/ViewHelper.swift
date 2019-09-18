//
//  ViewHelper.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/18/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import Foundation
import UIKit
class ViewHelper {
    static func hide(navigationController:UINavigationController?) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    static func show(navigationController:UINavigationController?) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
