//
//  trap.swift
//  Try
//
//  Created by Jacob Berkman on 2015-10-19.
//

import Foundation

enum TryError: ErrorType {
    case Exception(e: NSException)
}

/**
 Wraps a closure in a `WBTry.tryBlock` to catch Objective-C exceptions using the Swift error handling model.
 
 - parameter    block:  The block of code to run within a `WBTry.tryBlock`.
 - throws:      Throws a `TryError` if the wrapped code throws an exception.
*/
public func trap(@noescape block: () -> Void) throws {
    var exception: NSException?

    WBTry.tryBlock(block, catchAndRethrowBlock: {
        exception = $0 as? NSException
        return false
    }, finallyBlock: nil)

    if let e = exception {
        throw TryError.Exception(e: e)
    }
}