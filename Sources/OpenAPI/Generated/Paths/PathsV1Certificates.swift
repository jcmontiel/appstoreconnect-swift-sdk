// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var certificates: Certificates {
		Certificates(path: path + "/certificates")
	}

	public struct Certificates {
		/// Path: `/v1/certificates`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CertificatesResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "certificates-get_collection")
		}

		public struct GetParameters {
			public var filterCertificateType: [FilterCertificateType]?
			public var filterDisplayName: [String]?
			public var filterSerialNumber: [String]?
			public var filterID: [String]?
			public var sort: [Sort]?
			public var fieldsCertificates: [FieldsCertificates]?
			public var limit: Int?

			public enum FilterCertificateType: String, Codable, CaseIterable {
				case iosDevelopment = "IOS_DEVELOPMENT"
				case iosDistribution = "IOS_DISTRIBUTION"
				case macAppDistribution = "MAC_APP_DISTRIBUTION"
				case macInstallerDistribution = "MAC_INSTALLER_DISTRIBUTION"
				case macAppDevelopment = "MAC_APP_DEVELOPMENT"
				case developerIDKext = "DEVELOPER_ID_KEXT"
				case developerIDApplication = "DEVELOPER_ID_APPLICATION"
				case development = "DEVELOPMENT"
				case distribution = "DISTRIBUTION"
				case passTypeID = "PASS_TYPE_ID"
				case passTypeIDWithNfc = "PASS_TYPE_ID_WITH_NFC"
				case developerIDApplicationG2 = "DEVELOPER_ID_APPLICATION_G2"
			}

			public enum Sort: String, Codable, CaseIterable {
				case certificateType
				case minuscertificateType = "-certificateType"
				case displayName
				case minusdisplayName = "-displayName"
				case id
				case minusid = "-id"
				case serialNumber
				case minusserialNumber = "-serialNumber"
			}

			public enum FieldsCertificates: String, Codable, CaseIterable {
				case certificateContent
				case certificateType
				case csrContent
				case displayName
				case expirationDate
				case name
				case platform
				case serialNumber
			}

			public init(filterCertificateType: [FilterCertificateType]? = nil, filterDisplayName: [String]? = nil, filterSerialNumber: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsCertificates: [FieldsCertificates]? = nil, limit: Int? = nil) {
				self.filterCertificateType = filterCertificateType
				self.filterDisplayName = filterDisplayName
				self.filterSerialNumber = filterSerialNumber
				self.filterID = filterID
				self.sort = sort
				self.fieldsCertificates = fieldsCertificates
				self.limit = limit
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterCertificateType, forKey: "filter[certificateType]")
				encoder.encode(filterDisplayName, forKey: "filter[displayName]")
				encoder.encode(filterSerialNumber, forKey: "filter[serialNumber]")
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
				encoder.encode(limit, forKey: "limit")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.CertificateCreateRequest) -> Request<AppStoreConnect_Swift_SDK.CertificateResponse> {
			Request(path: path, method: "POST", body: body, id: "certificates-create_instance")
		}
	}
}
