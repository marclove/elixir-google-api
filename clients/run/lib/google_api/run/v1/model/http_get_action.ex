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

defmodule GoogleApi.Run.V1.Model.HTTPGetAction do
  @moduledoc """
  Not supported by Cloud Run HTTPGetAction describes an action based on HTTP Get requests.

  ## Attributes

  *   `host` (*type:* `String.t`, *default:* `nil`) - (Optional) Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
  *   `httpHeaders` (*type:* `list(GoogleApi.Run.V1.Model.HTTPHeader.t)`, *default:* `nil`) - (Optional) Custom headers to set in the request. HTTP allows repeated headers.
  *   `path` (*type:* `String.t`, *default:* `nil`) - (Optional) Path to access on the HTTP server.
  *   `scheme` (*type:* `String.t`, *default:* `nil`) - (Optional) Scheme to use for connecting to the host. Defaults to HTTP.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => String.t() | nil,
          :httpHeaders => list(GoogleApi.Run.V1.Model.HTTPHeader.t()) | nil,
          :path => String.t() | nil,
          :scheme => String.t() | nil
        }

  field(:host)
  field(:httpHeaders, as: GoogleApi.Run.V1.Model.HTTPHeader, type: :list)
  field(:path)
  field(:scheme)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.HTTPGetAction do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.HTTPGetAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.HTTPGetAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
