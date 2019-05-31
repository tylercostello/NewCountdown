//
//  ViewController.swift
//  NewCountdown
//
//  Created by Mac Book on 5/28/19.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
   
    @IBOutlet weak var OtherLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func myButton(_ sender: Any) {
        let calendar = Calendar.current
        let currentDate = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM,dd,yyyy"
       // let convertedDate = dateFormatter.date(from: currentDate as Date)
        //let firstDate=
        let secondDate="JUN,14,2019"
        let newsecondDate=dateFormatter.date(from: secondDate)
        // Replace the hour (time) of both dates with 00:00
        let date1 = calendar.startOfDay(for: currentDate as Date)
        let date2 = calendar.startOfDay(for: newsecondDate as! Date)
        
        print(String(Date().dayNumberOfWeek()!))

        let components = calendar.dateComponents([.day], from: date1, to: date2)
        var days = components.day!
        OtherLabel.text=String(days)
        var weekEnds=Double(days)/7
        weekEnds=2*floor(weekEnds)
        days=days-Int(weekEnds)
        if (String(Date().dayNumberOfWeek()!)=="7"){
            days=days-1
        }
        print(days)
        myLabel.text=String(days)
        
       
    }
    
}
extension Date {
    func dayNumberOfWeek() -> Int? {
        return Calendar.current.dateComponents([.weekday], from: self).weekday
    }
}

