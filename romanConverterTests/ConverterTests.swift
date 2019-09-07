//
//  ConverterTests.swift
//  romanConverterTests
//
//  Created by Merve Kavaklioglu on 06/09/2019.
//  Copyright © 2019 Merve Kavaklioglu. All rights reserved.
//

import XCTest
@testable import romanConverter

class ConverterTests: XCTestCase {
    
let converter = Converter()
    
    
    func testConversionFor1()
    {
        let result = converter.numberToRomanConversion("1")
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
    
    func testConversionFor2(){
        let result = converter.numberToRomanConversion("2")
        XCTAssertEqual(result, "II", "Conversion for 2 is incorrect")
    }
    func testConversionFor3(){
        let result = converter.numberToRomanConversion("3")
        XCTAssertEqual(result, "III", "Conversion for 3 is incorrect")
    }
    func testConversionFor4(){
        let result = converter.numberToRomanConversion("4")
        XCTAssertEqual(result, "IV", "Conversion for 4 is incorrect")
    }
    func testConversionFor5(){
        let result = converter.numberToRomanConversion("5")
        XCTAssertEqual(result, "V", "Conversion for 5 is incorrect")
    }
    func testConversionFor6(){
        let result = converter.numberToRomanConversion("6")
        XCTAssertEqual(result, "VI", "Conversion for 6 is incorrect")
    }
    func testConversionFor7(){
        let result = converter.numberToRomanConversion("7")
        XCTAssertEqual(result, "VII", "Conversion for 7 is incorrect")
    }
    func testConversionFor8(){
        let result = converter.numberToRomanConversion("8")
        XCTAssertEqual(result, "VIII", "Conversion for 8 is incorrect")
    }
    func testConversionFor9(){
        let result = converter.numberToRomanConversion("9")
        XCTAssertEqual(result, "IX", "Conversion for 9 is incorrect")
    }
    func testConversionFor10(){
        let result = converter.numberToRomanConversion("10")
        XCTAssertEqual(result, "X", "Conversion for 10 is incorrect")
    }
    func testConversionFor50(){
        let result = converter.numberToRomanConversion("50")
        XCTAssertEqual(result, "L", "Conversion for 50 is incorrect")
    }
    func testConversionFor100(){
        let result = converter.numberToRomanConversion("100")
        XCTAssertEqual(result, "C", "Conversion for 100 is incorrect")
    }
    func testConversionFor500(){
        let result = converter.numberToRomanConversion("500")
        XCTAssertEqual(result, "D", "Conversion for 100 is incorrect")
    }

    func testConversionFor3987(){
        let result = converter.numberToRomanConversion("724")
        XCTAssertEqual(result, "DCCXXIV", "Conversion for 724 is incorrect")
    }
//    override func setUp() {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }

//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
