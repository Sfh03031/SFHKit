//
//  SLEx.swift
//  KuKit
//
//  Created by sfh on 2023/2/13.
//

import Foundation
import UIKit

//定义一个不能被继承的类SLEx
public final class SLEx<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
    public var build: Base {
        return base
    }
}

//添加associatedtype关键字修饰后该协议就不能被当作独立的类型使用了。因为 SLExCompatible 包含了一个不确定的类型，所以随着 SLExCompatible 本身类型的变化，其中的 CompatibleType 将无法确定。在一个协议加入了像是 associatedtype 或者 Self 的约束后，它将只能被用为泛型约束，而不能作为独立类型的占位使用
public protocol SLExCompatible {
    associatedtype CompatibleType
    var sl: CompatibleType { get }
    static var sl: CompatibleType.Type { get }
}

public extension SLExCompatible {
    var sl: SLEx<Self> {
        return SLEx(self)
    }
    static var sl: SLEx<Self>.Type {
        return SLEx.self
    }
    
}


extension NSObject: SLExCompatible {}
extension Int: SLExCompatible {}
