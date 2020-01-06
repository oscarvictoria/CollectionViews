//
//  Extension.swift
//  CollectionViews
//
//  Created by Oscar Victoria Gonzalez  on 1/6/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

extension String {
    
    // returns an ISO8601DateFormatter
    static func getISOFormatter() -> ISO8601DateFormatter {
        let isoDateFormatter = ISO8601DateFormatter()
        isoDateFormatter.timeZone = .current
        isoDateFormatter.formatOptions = [
            .withInternetDateTime,
            .withFullDate,
            .withFullTime,
            .withFractionalSeconds, // must have this option
            .withColonSeparatorInTimeZone
        ]
        return isoDateFormatter
    }
    
    // creates a timestamp - then creates date and time of the object
    static func getISOTimestamp() -> String { // Date()
        let isoDateFormatter = getISOFormatter()
        let timestamp = isoDateFormatter.string(from: Date()) // current date and time
        return timestamp
    }
    
    
    func convertISODate() -> String {
        let isoDateFormatter = String.getISOFormatter()
        guard let date = isoDateFormatter.date(from: self) else {
            return self
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d yyyy, h:mm a"
        
        let dateString = dateFormatter.string(from: date)
        
        return dateString
    }
    
    func isoStringToDate() -> Date {
        let isoDateFormatter = String.getISOFormatter()
        guard let date = isoDateFormatter.date(from: self) else {
            return Date()
        }
        return date
    }
}














