/*
 An optional is like a wrapper or box. It can hold something or it can be empty. Imagine a gift box or package being delivered from Amazon... Your package should have something inside, but it's possible that it won't if there was some type of mishap at the fulfillment center.
 
 The big idea is that we can safely use the box without worry of what, if anything, is inside.
 */

import UIKit

let optionalImage = #imageLiteral(resourceName: "nil.png")
let nonOptionalImage = #imageLiteral(resourceName: "5.png")

// MARK – Forced Unwrapping:
var optionalNumber: Int? = 5
var number: Int = 5

if optionalNumber != nil {
    print("optionalNumber has a value of \(optionalNumber!).")
}


// MARK – Optional Binding:
if let constantNumber = optionalNumber {
    print("optionalNumber has a value of \(constantNumber).")
} else {
    print("optionalNumber is nil")
}

func intPrinter() {
    guard let constantNumber = optionalNumber else { return }
    print("optionalNumber has a value of \(constantNumber).")
}

intPrinter()


// MARK – Implicitly Unwrapped Optionals:
// Forced Unwrapping
let optionalValue: Int? = 123
let forcedValue: Int = optionalValue!

// Implicitly Unwrapped Optional
let assumedValue: Int! = 123
let implicitValue: Int = assumedValue


// MARK – Nil Coalescing & Ternary Operator:
let optionalInt: Int? = nil
let result = optionalInt ?? 0

print("The result is \(result).")


// MARK - Optional Chaining:
class ComicConAttendee {
    var admissionBadge: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(days: Int) {
        self.numberOfDays = days
    }
}

let admissionBadge = AdmissionBadge(days: 3)
let attendee = ComicConAttendee(badge: admissionBadge)

if let daysAttendable = attendee.admissionBadge?.numberOfDays {
    print("This attendee can enter Comic Con for \(daysAttendable) days.")
} else {
    print("This person is not an attendee. Please refer them to the ticket desk.")
}
