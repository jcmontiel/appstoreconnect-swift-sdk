// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Metrics {
	public var betaTesterUsages: BetaTesterUsages {
		BetaTesterUsages(path: path + "/betaTesterUsages")
	}

	public struct BetaTesterUsages {
		/// Path: `/v1/apps/{id}/metrics/betaTesterUsages`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppsBetaTesterUsagesV1MetricResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps-betaTesterUsages-get_metrics")
		}

		public struct GetParameters {
			public var limit: Int?
			public var groupBy: [GroupBy]?
			public var filterBetaTesters: String?
			public var period: Period?

			public enum GroupBy: String, Codable, CaseIterable {
				case betaTesters
			}

			public enum Period: String, Codable, CaseIterable {
				case p7d = "P7D"
				case p30d = "P30D"
				case p90d = "P90D"
				case p365d = "P365D"
			}

			public init(limit: Int? = nil, groupBy: [GroupBy]? = nil, filterBetaTesters: String? = nil, period: Period? = nil) {
				self.limit = limit
				self.groupBy = groupBy
				self.filterBetaTesters = filterBetaTesters
				self.period = period
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(limit, forKey: "limit")
				encoder.encode(groupBy, forKey: "groupBy")
				encoder.encode(filterBetaTesters, forKey: "filter[betaTesters]")
				encoder.encode(period, forKey: "period")
				return encoder.items
			}
		}
	}
}
