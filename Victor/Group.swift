//
//  Group.swift
//  Victor
//
//  Created by Matthew Delves on 4/3/17.
//  Copyright © 2017 Matthew Delves. All rights reserved.
//

import Foundation

public class Group: Node {
    public var attributes: [String : String]
    public var children: [Node]
    public var name: String
    public var parent: Node?

    public init(attributes: [String: String], children: [Node], name: String, parent: Node?) {
        self.attributes = attributes
        self.children = children
        self.name = name
        self.parent = parent
    }
}
