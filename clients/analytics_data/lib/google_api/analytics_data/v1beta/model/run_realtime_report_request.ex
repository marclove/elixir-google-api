# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AnalyticsData.V1beta.Model.RunRealtimeReportRequest do
  @moduledoc """
  The request to generate a realtime report.

  ## Attributes

  *   `dimensionFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t`, *default:* `nil`) - The filter clause of dimensions. Metrics cannot be used in this filter.
  *   `dimensions` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Dimension.t)`, *default:* `nil`) - The dimensions requested and displayed.
  *   `limit` (*type:* `String.t`, *default:* `nil`) - The number of rows to return. If unspecified, 10,000 rows are returned. The API returns a maximum of 250,000 rows per request, no matter how many you ask for. `limit` must be positive. The API can also return fewer rows than the requested `limit`, if there aren't as many dimension values as the `limit`. For instance, there are fewer than 300 possible values for the dimension `country`, so when reporting on only `country`, you can't get more than 300 rows, even if you set `limit` to a higher value.
  *   `metricAggregations` (*type:* `list(String.t)`, *default:* `nil`) - Aggregation of metrics. Aggregated metric values will be shown in rows where the dimension_values are set to "RESERVED_(MetricAggregation)".
  *   `metricFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t`, *default:* `nil`) - The filter clause of metrics. Applied at post aggregation phase, similar to SQL having-clause. Dimensions cannot be used in this filter.
  *   `metrics` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Metric.t)`, *default:* `nil`) - The metrics requested and displayed.
  *   `minuteRanges` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.MinuteRange.t)`, *default:* `nil`) - The minute ranges of event data to read. If unspecified, one minute range for the last 30 minutes will be used. If multiple minute ranges are requested, each response row will contain a zero based minute range index. If two minute ranges overlap, the event data for the overlapping minutes is included in the response rows for both minute ranges.
  *   `orderBys` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.OrderBy.t)`, *default:* `nil`) - Specifies how rows are ordered in the response.
  *   `returnPropertyQuota` (*type:* `boolean()`, *default:* `nil`) - Toggles whether to return the current state of this Analytics Property's Realtime quota. Quota is returned in [PropertyQuota](#PropertyQuota).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionFilter => GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t() | nil,
          :dimensions => list(GoogleApi.AnalyticsData.V1beta.Model.Dimension.t()) | nil,
          :limit => String.t() | nil,
          :metricAggregations => list(String.t()) | nil,
          :metricFilter => GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t() | nil,
          :metrics => list(GoogleApi.AnalyticsData.V1beta.Model.Metric.t()) | nil,
          :minuteRanges => list(GoogleApi.AnalyticsData.V1beta.Model.MinuteRange.t()) | nil,
          :orderBys => list(GoogleApi.AnalyticsData.V1beta.Model.OrderBy.t()) | nil,
          :returnPropertyQuota => boolean() | nil
        }

  field(:dimensionFilter, as: GoogleApi.AnalyticsData.V1beta.Model.FilterExpression)
  field(:dimensions, as: GoogleApi.AnalyticsData.V1beta.Model.Dimension, type: :list)
  field(:limit)
  field(:metricAggregations, type: :list)
  field(:metricFilter, as: GoogleApi.AnalyticsData.V1beta.Model.FilterExpression)
  field(:metrics, as: GoogleApi.AnalyticsData.V1beta.Model.Metric, type: :list)
  field(:minuteRanges, as: GoogleApi.AnalyticsData.V1beta.Model.MinuteRange, type: :list)
  field(:orderBys, as: GoogleApi.AnalyticsData.V1beta.Model.OrderBy, type: :list)
  field(:returnPropertyQuota)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.RunRealtimeReportRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.RunRealtimeReportRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.RunRealtimeReportRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
