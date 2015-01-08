//
//  CoreDataSwiftTestsTests.swift
//  CoreDataSwiftTestsTests
//
//  Created by BARRET Frank (MORPHO) on 08/01/2015.
//  Copyright (c) 2015 Frank. All rights reserved.
//

import UIKit
import XCTest
import CoreDataSwiftTests

class CoreDataSwiftTestsTests: XCTestCase {
    var coreDataHelper = CoreDataHelper()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCanCreateCustomer() {
        var customer = coreDataHelper.createCustomer(1000)
        XCTAssertNotNil(customer, "could not create customer")
    }
    
    func testCanfetchCustomer() {
        var cust = coreDataHelper.createCustomer(1000)
        //cust?.name = "Bill"
        self.coreDataHelper.saveContext()
        var customers = coreDataHelper.fetchCustomers(1000)
        XCTAssertNotNil(customers, "could not create customer")
        XCTAssertNotEqual(customers!.count, 0, "there should be at least one customer")
        for customer in customers!{
            var id = customer.customerID
            if let name = customer.name as String?{
            NSLog("\(id): \(name)")
            }else{
                NSLog("\(id): nil")
            }
        }
    }

}
