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

defmodule GoogleApi.AdSenseHost.V41.Model.CustomChannels do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of this response for caching purposes.
  *   `items` (*type:* `list(GoogleApi.AdSenseHost.V41.Model.CustomChannel.t)`, *default:* `nil`) - The custom channels returned in this list response.
  *   `kind` (*type:* `String.t`, *default:* `adsensehost#customChannels`) - Kind of list this is, in this case adsensehost#customChannels.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token used to page through custom channels. To retrieve the next page of results, set the next request's "pageToken" value to this.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :items => list(GoogleApi.AdSenseHost.V41.Model.CustomChannel.t()),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:etag)
  field(:items, as: GoogleApi.AdSenseHost.V41.Model.CustomChannel, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AdSenseHost.V41.Model.CustomChannels do
  def decode(value, options) do
    GoogleApi.AdSenseHost.V41.Model.CustomChannels.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSenseHost.V41.Model.CustomChannels do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
