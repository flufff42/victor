//
//  ParserSpec.swift
//  Victor
//
//  Created by Matthew Delves on 4/3/17.
//  Copyright © 2017 Matthew Delves. All rights reserved.
//

import Quick
import Nimble

@testable import Victor

final class ParserSpec: QuickSpec {
    override func spec() {
        describe("file") {
            it("preparation") {
                let parser = Parser(file: "hithere")
                expect(parser.location) == "hithere"
            }
        }
        context("parsing") {
            let filePath = Bundle(for: type(of: self)).path(forResource: "simple_rect", ofType: "svg")!
            let parser = Parser(file: "file://\(filePath)")

            it("returns SVG document") {
                expect(parser.parse()).notTo(beNil())
            }
            it("has some children") {
                expect(parser.parse()?.children.count) == 5
            }
        }
    }
}
