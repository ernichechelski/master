//
//  Scope.swift
//  CodingChallenge
//
//  Created by Ernest Chechelski on 21/08/2022.
//

import UIKit

/// Creates value and runs given block on it, then returns it.
/// Useful when creating new variables with configuration, to avoid
/// introducing temporary variables.
///
/// - Parameters:
///   - target: Target object
///   - block: Method to be run on target object
@inline(__always) func with<T>(_ target: T, block: (T) -> Void) -> T {
    block(target)
    return target
}

/// Creates value and runs given block, then returns it.
/// Works like defer.
///
/// - Parameters:
///   - target: Target object to be returned after calling block.
///   - block: Method to be run.
@inline(__always) func with<T>(_ target: T, block: () -> Void) -> T {
    block()
    return target
}
