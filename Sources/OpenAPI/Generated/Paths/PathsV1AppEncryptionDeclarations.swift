// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appEncryptionDeclarations: AppEncryptionDeclarations {
		AppEncryptionDeclarations(path: path + "/appEncryptionDeclarations")
	}

	public struct AppEncryptionDeclarations {
		/// Path: `/v1/appEncryptionDeclarations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEncryptionDeclarationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appEncryptionDeclarations-get_collection")
		}

		public struct GetParameters {
			public var filterPlatform: [FilterPlatform]?
			public var filterApp: [String]?
			public var filterBuilds: [String]?
			public var fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]?
			public var fieldsApps: [FieldsApps]?
			public var limitBuilds: Int?

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
				case visionOs = "VISION_OS"
			}

			public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
				case app
				case appDescription
				case appEncryptionDeclarationDocument
				case appEncryptionDeclarationState
				case availableOnFrenchStore
				case builds
				case codeValue
				case containsProprietaryCryptography
				case containsThirdPartyCryptography
				case createdDate
				case documentName
				case documentType
				case documentURL = "documentUrl"
				case exempt
				case platform
				case uploadedDate
				case usesEncryption
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclarationDocument
				case builds
			}

			public enum FieldsAppEncryptionDeclarationDocuments: String, Codable, CaseIterable {
				case appEncryptionDeclaration
				case assetDeliveryState
				case assetToken
				case downloadURL = "downloadUrl"
				case fileName
				case fileSize
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case alternativeDistributionKey
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case marketplaceSearchDetail
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public init(filterPlatform: [FilterPlatform]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]? = nil, fieldsApps: [FieldsApps]? = nil, limitBuilds: Int? = nil) {
				self.filterPlatform = filterPlatform
				self.filterApp = filterApp
				self.filterBuilds = filterBuilds
				self.fieldsAppEncryptionDeclarations = fieldsAppEncryptionDeclarations
				self.limit = limit
				self.include = include
				self.fieldsAppEncryptionDeclarationDocuments = fieldsAppEncryptionDeclarationDocuments
				self.fieldsApps = fieldsApps
				self.limitBuilds = limitBuilds
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(filterBuilds, forKey: "filter[builds]")
				encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppEncryptionDeclarationDocuments, forKey: "fields[appEncryptionDeclarationDocuments]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				return encoder.items
			}
		}
	}
}
