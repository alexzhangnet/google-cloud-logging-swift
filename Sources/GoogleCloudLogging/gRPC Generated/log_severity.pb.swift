// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/logging/type/log_severity.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// The severity of the event described in a log entry, expressed as one of the
/// standard severity levels listed below.  For your reference, the levels are
/// assigned the listed numeric values. The effect of using numeric values other
/// than those listed is undefined.
///
/// You can filter for log entries by severity.  For example, the following
/// filter expression will match log entries with severities `INFO`, `NOTICE`,
/// and `WARNING`:
///
///     severity > DEBUG AND severity <= WARNING
///
/// If you are writing log entries, you should map other severity encodings to
/// one of these standard levels. For example, you might map all of Java's FINE,
/// FINER, and FINEST levels to `LogSeverity.DEBUG`. You can preserve the
/// original severity level in the log entry payload if you wish.
enum Google_Logging_Type_LogSeverity: SwiftProtobuf.Enum {
  typealias RawValue = Int

  /// (0) The log entry has no assigned severity level.
  case `default` // = 0

  /// (100) Debug or trace information.
  case debug // = 100

  /// (200) Routine information, such as ongoing status or performance.
  case info // = 200

  /// (300) Normal but significant events, such as start up, shut down, or
  /// a configuration change.
  case notice // = 300

  /// (400) Warning events might cause problems.
  case warning // = 400

  /// (500) Error events are likely to cause problems.
  case error // = 500

  /// (600) Critical events cause more severe problems or outages.
  case critical // = 600

  /// (700) A person must take an action immediately.
  case alert // = 700

  /// (800) One or more systems are unusable.
  case emergency // = 800
  case UNRECOGNIZED(Int)

  init() {
    self = .default
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .default
    case 100: self = .debug
    case 200: self = .info
    case 300: self = .notice
    case 400: self = .warning
    case 500: self = .error
    case 600: self = .critical
    case 700: self = .alert
    case 800: self = .emergency
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .default: return 0
    case .debug: return 100
    case .info: return 200
    case .notice: return 300
    case .warning: return 400
    case .error: return 500
    case .critical: return 600
    case .alert: return 700
    case .emergency: return 800
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Logging_Type_LogSeverity: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Google_Logging_Type_LogSeverity] = [
    .default,
    .debug,
    .info,
    .notice,
    .warning,
    .error,
    .critical,
    .alert,
    .emergency,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Google_Logging_Type_LogSeverity: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DEFAULT"),
    100: .same(proto: "DEBUG"),
    200: .same(proto: "INFO"),
    300: .same(proto: "NOTICE"),
    400: .same(proto: "WARNING"),
    500: .same(proto: "ERROR"),
    600: .same(proto: "CRITICAL"),
    700: .same(proto: "ALERT"),
    800: .same(proto: "EMERGENCY"),
  ]
}
