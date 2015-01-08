//
//  Customer.swift
//  CoreDataSwiftTests
//
//  Created by BARRET Frank (MORPHO) on 08/01/2015.
//  Copyright (c) 2015 Frank. All rights reserved.
//

import Foundation
import CoreData

@objc(Customer)
public class Customer: NSManagedObject {

    @NSManaged public var customerID: NSNumber
    @NSManaged public var name: String
    @NSManaged public var orders: NSSet

}
