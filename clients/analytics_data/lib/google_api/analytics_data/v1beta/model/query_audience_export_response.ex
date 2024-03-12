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

defmodule GoogleApi.AnalyticsData.V1beta.Model.QueryAudienceExportResponse do
  @moduledoc """
  A list of users in an audience export.

  ## Attributes

  *   `audienceExport` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.AudienceExport.t`, *default:* `nil`) - Configuration data about AudienceExport being queried. Returned to help interpret the audience rows in this response. For example, the dimensions in this AudienceExport correspond to the columns in the AudienceRows.
  *   `audienceRows` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.V1betaAudienceRow.t)`, *default:* `nil`) - Rows for each user in an audience export. The number of rows in this response will be less than or equal to request's page size.
  *   `rowCount` (*type:* `integer()`, *default:* `nil`) - The total number of rows in the AudienceExport result. `rowCount` is independent of the number of rows returned in the response, the `limit` request parameter, and the `offset` request parameter. For example if a query returns 175 rows and includes `limit` of 50 in the API request, the response will contain `rowCount` of 175 but only 50 rows. To learn more about this pagination parameter, see [Pagination](https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audienceExport => GoogleApi.AnalyticsData.V1beta.Model.AudienceExport.t() | nil,
          :audienceRows => list(GoogleApi.AnalyticsData.V1beta.Model.V1betaAudienceRow.t()) | nil,
          :rowCount => integer() | nil
        }

  field(:audienceExport, as: GoogleApi.AnalyticsData.V1beta.Model.AudienceExport)
  field(:audienceRows, as: GoogleApi.AnalyticsData.V1beta.Model.V1betaAudienceRow, type: :list)
  field(:rowCount)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.QueryAudienceExportResponse do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.QueryAudienceExportResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.QueryAudienceExportResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
