//
// VoteType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The vote type to submit. Submitting the same vote type twice will undo the vote. - -1 &#x3D; dislike - 1 &#x3D; like */
public enum VoteType: Int, Codable, CaseIterable {
    case number1 = -1
    case _1 = 1
}
