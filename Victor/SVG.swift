//
//  SVG.swift
//  Victor
//
//  Created by Matthew Delves on 4/3/17.
//  Copyright © 2017 Matthew Delves. All rights reserved.
//

import Foundation

public class SVG: Node {
    public var attributes: [String : String]
    public var children: [Node]
    public var name: String
    public var parent: Node?

    public var width: String
    public var height: String

    public enum Attributes: String {
        case width
        case height
    }

    public init(attributes: [String: String], children: [Node], name: String, parent: Node?) {
        self.attributes = attributes
        self.children = children
        self.name = name
        self.parent = parent

        if let width = attributes[Attributes.width.rawValue] {
            self.width = width
        } else {
            self.width = ""
        }

        if let height = attributes[Attributes.height.rawValue] {
            self.height = height
        } else {
            self.height = ""
        }
    }
}
