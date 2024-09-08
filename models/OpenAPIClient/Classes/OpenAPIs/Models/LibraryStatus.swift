//
// LibraryStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The set of available library status types. */
public enum LibraryStatus: String, Codable, CaseIterable {
    case watching = "Watching"
    case dropped = "Dropped"
    case planning = "Planning"
    case completed = "Completed"
    case onHold = "OnHold"
}
