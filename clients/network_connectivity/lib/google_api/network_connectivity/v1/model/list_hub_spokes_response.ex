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

defmodule GoogleApi.NetworkConnectivity.V1.Model.ListHubSpokesResponse do
  @moduledoc """
  The response for HubService.ListHubSpokes.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token for the next page of the response. To see more results, use this value as the page_token for your next request. If this value is empty, there are no more results.
  *   `spokes` (*type:* `list(GoogleApi.NetworkConnectivity.V1.Model.Spoke.t)`, *default:* `nil`) - The requested spokes. The spoke fields can be partially populated based on the `view` field in the request message.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :spokes => list(GoogleApi.NetworkConnectivity.V1.Model.Spoke.t()) | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:nextPageToken)
  field(:spokes, as: GoogleApi.NetworkConnectivity.V1.Model.Spoke, type: :list)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.ListHubSpokesResponse do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.ListHubSpokesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.ListHubSpokesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
