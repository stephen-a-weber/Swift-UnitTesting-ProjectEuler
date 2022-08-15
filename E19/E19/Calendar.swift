//
//  Calendar.swift
//  E19
//
//  Created by stephen weber on 8/13/22.
//

import Foundation

class CountCalendar {
    var numWeeks = ["Monday","Tuesday","Wendsday","Thursday","Friday","Saturday","Sunday"]
    var dictDayOfWeek = [Int: [String]]()
    var daysInMonth = [31,28,31,30,31,30,31,31,30,31,30,31]
    var year = 1900
    var day = 1
    var month = 0
    var totalDaysOfMonth = 0
    var index = 0
    init() {
        for x in 1...31 {
            dictDayOfWeek[x]=[]}
    }
    func throughDays()-> Int {
        var countDays = 0
        while year < 2001 {
            month = 0
            while month < 12 {
            day = 1
            totalDaysOfMonth = daysInMonth[month]
            if month == 1 {
                if year%4 == 0 {
                 totalDaysOfMonth = 29
                }
            }
            while day<=totalDaysOfMonth {
                 print(year,month,day,numWeeks[index%7])
                if year>=1901 {
                    dictDayOfWeek[day]?.append(numWeeks[index%7])}
                index+=1
                day += 1
               
            }
            month+=1
            }
          year += 1
        }
        return countDays
    }
    
    
    
    func countdays(a:[String])->Int {
        var b = a.count
        var c = 0
        for x in 0..<b {
            if a[x] == "Sunday" {
                c+=1
            }
        }
        return c
    }
}
