//
// ImportBehavior.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The set of available import behavior types. - 0 &#x3D; overwrite - 1 &#x3D; merge */
public enum ImportBehavior: Int, Codable, CaseIterable {
    case _0 = 0
    case _1 = 1
}