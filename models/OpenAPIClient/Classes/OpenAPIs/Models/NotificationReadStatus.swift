//
// NotificationReadStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The notification read status used to mark a notification as read or unread. - 0 &#x3D; unread - 1 &#x3D; read */
public enum NotificationReadStatus: Int, Codable, CaseIterable {
    case _0 = 0
    case _1 = 1
}
