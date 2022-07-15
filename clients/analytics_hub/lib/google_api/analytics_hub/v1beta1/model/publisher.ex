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

defmodule GoogleApi.AnalyticsHub.V1beta1.Model.Publisher do
  @moduledoc """
  Contains details of the listing publisher.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. Name of the listing publisher.
  *   `primaryContact` (*type:* `String.t`, *default:* `nil`) - Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :primaryContact => String.t() | nil
        }

  field(:name)
  field(:primaryContact)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsHub.V1beta1.Model.Publisher do
  def decode(value, options) do
    GoogleApi.AnalyticsHub.V1beta1.Model.Publisher.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsHub.V1beta1.Model.Publisher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
