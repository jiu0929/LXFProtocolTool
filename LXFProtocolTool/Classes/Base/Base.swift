//
//  Base.swift
//  LXFProtocolTool
//
//  Created by 林洵锋 on 2018/7/29.
//

import Foundation

public final class LXFExtension<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol LXFCompatible {
    associatedtype LXFCompatibleType
    var lxf: LXFCompatibleType { get }
}

public extension LXFCompatible {
    public var lxf: LXFExtension<Self> {
        get { return LXFExtension(self) }
    }
}
