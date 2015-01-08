//
//  Order.swift
//  CoreDataSwiftTests
//
//  Created by BARRET Frank (MORPHO) on 08/01/2015.
//  Copyright (c) 2015 Frank. All rights reserved.
//

import Foundation
import CoreData

@objc(Order)
public class Order: NSManagedObject {

    @NSManaged public var timeStamp: NSDate?
    @NSManaged public var price: NSDecimalNumber?
    @NSManaged public var customer: Customer?

}
