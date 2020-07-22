// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/api/monitored_resource.proto
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

/// An object that describes the schema of a [MonitoredResource][google.api.MonitoredResource] object using a
/// type name and a set of labels.  For example, the monitored resource
/// descriptor for Google Compute Engine VM instances has a type of
/// `"gce_instance"` and specifies the use of the labels `"instance_id"` and
/// `"zone"` to identify particular VM instances.
///
/// Different services can support different monitored resource types.
///
/// The following are specific rules to service defined monitored resources for
/// Monitoring and Logging:
///
/// * The `type`, `display_name`, `description`, `labels` and `launch_stage`
///   fields are all required.
/// * The first label of the monitored resource descriptor must be
///   `resource_container`. There are legacy monitored resource descritptors
///   start with `project_id`.
/// * It must include a `location` label.
/// * Maximum of default 5 service defined monitored resource descriptors
///   is allowed per service.
/// * Maximum of default 10 labels per monitored resource is allowed.
///
/// The default maximum limit can be overridden. Please follow
/// https://cloud.google.com/monitoring/quotas
struct Google_Api_MonitoredResourceDescriptor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional. The resource name of the monitored resource descriptor:
  /// `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where
  /// {type} is the value of the `type` field in this object and
  /// {project_id} is a project ID that provides API-specific context for
  /// accessing the type.  APIs that do not use project information can use the
  /// resource name format `"monitoredResourceDescriptors/{type}"`.
  var name: String = String()

  /// Required. The monitored resource type. For example, the type
  /// `cloudsql_database` represents databases in Google Cloud SQL.
  ///
  /// All service defined monitored resource types must be prefixed with the
  /// service name, in the format of `{service name}/{relative resource name}`.
  /// The relative resource name must follow:
  ///
  /// * Only upper and lower-case letters and digits are allowed.
  /// * It must start with upper case character and is recommended to use Upper
  ///   Camel Case style.
  /// * The maximum number of characters allowed for the relative_resource_name
  ///   is 100.
  ///
  /// Note there are legacy service monitored resources not following this rule.
  var type: String = String()

  /// Optional. A concise name for the monitored resource type that might be
  /// displayed in user interfaces. It should be a Title Cased Noun Phrase,
  /// without any article or other determiners. For example,
  /// `"Google Cloud SQL Database"`.
  var displayName: String = String()

  /// Optional. A detailed description of the monitored resource type that might
  /// be used in documentation.
  var description_p: String = String()

  /// Required. A set of labels used to describe instances of this monitored
  /// resource type.
  /// The label key name must follow:
  ///
  /// * Only upper and lower-case letters, digits and underscores (_) are
  ///   allowed.
  /// * Label name must start with a letter or digit.
  /// * The maximum length of a label name is 100 characters.
  ///
  /// For example, an individual Google Cloud SQL database is
  /// identified by values for the labels `database_id` and `location`.
  var labels: [Google_Api_LabelDescriptor] = []

  /// Optional. The launch stage of the monitored resource definition.
  var launchStage: Google_Api_LaunchStage = .unspecified

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// An object representing a resource that can be used for monitoring, logging,
/// billing, or other purposes. Examples include virtual machine instances,
/// databases, and storage devices such as disks. The `type` field identifies a
/// [MonitoredResourceDescriptor][google.api.MonitoredResourceDescriptor] object that describes the resource's
/// schema. Information in the `labels` field identifies the actual resource and
/// its attributes according to the schema. For example, a particular Compute
/// Engine VM instance could be represented by the following object, because the
/// [MonitoredResourceDescriptor][google.api.MonitoredResourceDescriptor] for `"gce_instance"` has labels
/// `"instance_id"` and `"zone"`:
///
///     { "type": "gce_instance",
///       "labels": { "instance_id": "12345678901234",
///                   "zone": "us-central1-a" }}
struct Google_Api_MonitoredResource {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The monitored resource type. This field must match
  /// the `type` field of a [MonitoredResourceDescriptor][google.api.MonitoredResourceDescriptor] object. For
  /// example, the type of a Compute Engine VM instance is `gce_instance`.
  var type: String = String()

  /// Required. Values for all of the labels listed in the associated monitored
  /// resource descriptor. For example, Compute Engine VM instances use the
  /// labels `"project_id"`, `"instance_id"`, and `"zone"`.
  var labels: Dictionary<String,String> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Auxiliary metadata for a [MonitoredResource][google.api.MonitoredResource] object.
/// [MonitoredResource][google.api.MonitoredResource] objects contain the minimum set of information to
/// uniquely identify a monitored resource instance. There is some other useful
/// auxiliary metadata. Monitoring and Logging use an ingestion
/// pipeline to extract metadata for cloud resources of all types, and store
/// the metadata in this message.
struct Google_Api_MonitoredResourceMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Values for predefined system metadata labels.
  /// System labels are a kind of metadata extracted by Google, including
  /// "machine_image", "vpc", "subnet_id",
  /// "security_group", "name", etc.
  /// System label values can be only strings, Boolean values, or a list of
  /// strings. For example:
  ///
  ///     { "name": "my-test-instance",
  ///       "security_group": ["a", "b", "c"],
  ///       "spot_instance": false }
  var systemLabels: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _systemLabels ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_systemLabels = newValue}
  }
  /// Returns true if `systemLabels` has been explicitly set.
  var hasSystemLabels: Bool {return self._systemLabels != nil}
  /// Clears the value of `systemLabels`. Subsequent reads from it will return its default value.
  mutating func clearSystemLabels() {self._systemLabels = nil}

  /// Output only. A map of user-defined metadata labels.
  var userLabels: Dictionary<String,String> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _systemLabels: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.api"

extension Google_Api_MonitoredResourceDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MonitoredResourceDescriptor"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    5: .same(proto: "name"),
    1: .same(proto: "type"),
    2: .standard(proto: "display_name"),
    3: .same(proto: "description"),
    4: .same(proto: "labels"),
    7: .standard(proto: "launch_stage"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.type)
      case 2: try decoder.decodeSingularStringField(value: &self.displayName)
      case 3: try decoder.decodeSingularStringField(value: &self.description_p)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.labels)
      case 5: try decoder.decodeSingularStringField(value: &self.name)
      case 7: try decoder.decodeSingularEnumField(value: &self.launchStage)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if !self.displayName.isEmpty {
      try visitor.visitSingularStringField(value: self.displayName, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    if !self.labels.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.labels, fieldNumber: 4)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 5)
    }
    if self.launchStage != .unspecified {
      try visitor.visitSingularEnumField(value: self.launchStage, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Google_Api_MonitoredResourceDescriptor, rhs: Google_Api_MonitoredResourceDescriptor) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.type != rhs.type {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.launchStage != rhs.launchStage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_MonitoredResource: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MonitoredResource"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "labels"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.type)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Google_Api_MonitoredResource, rhs: Google_Api_MonitoredResource) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_MonitoredResourceMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MonitoredResourceMetadata"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "system_labels"),
    2: .standard(proto: "user_labels"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._systemLabels)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.userLabels)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._systemLabels {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.userLabels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.userLabels, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Google_Api_MonitoredResourceMetadata, rhs: Google_Api_MonitoredResourceMetadata) -> Bool {
    if lhs._systemLabels != rhs._systemLabels {return false}
    if lhs.userLabels != rhs.userLabels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
