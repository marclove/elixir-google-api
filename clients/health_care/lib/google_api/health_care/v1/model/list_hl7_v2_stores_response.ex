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

defmodule GoogleApi.HealthCare.V1.Model.ListHl7V2StoresResponse do
  @moduledoc """
  Lists the HL7v2 stores in the given dataset.

  ## Attributes

  *   `hl7V2Stores` (*type:* `list(GoogleApi.HealthCare.V1.Model.Hl7V2Store.t)`, *default:* `nil`) - The returned HL7v2 stores. Won't be more HL7v2 stores than the value of page_size in the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results or empty if there are no more results in the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hl7V2Stores => list(GoogleApi.HealthCare.V1.Model.Hl7V2Store.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:hl7V2Stores, as: GoogleApi.HealthCare.V1.Model.Hl7V2Store, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.ListHl7V2StoresResponse do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.ListHl7V2StoresResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.ListHl7V2StoresResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
