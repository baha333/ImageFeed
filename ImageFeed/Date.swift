//
//  Date.swift
//  ImageFeed
//
//  Created by Bakhadir on 23.01.2024.
//

import Foundation

private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "d MMMM yyyy"
    return formatter
}()

extension Date {
    var dateTimeString: String { dateFormatter.string(from: self)}
}
