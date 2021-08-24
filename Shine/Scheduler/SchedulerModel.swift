//
//  SchedulerModel.swift
//  SchedulerModel
//
//  Created by Anthony on 24/08/21.
//

import SwiftUI

struct SchedulerModel {
    var date: Date
    var title: String
    
    init(date: Date, title: String) {
        self.date = date
        self.title = title
    }
}
