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

defmodule GoogleApi.HealthCare.V1.Model.VersionSource do
  @moduledoc """
  Describes a selector for extracting and matching an MSH field to a value.

  ## Attributes

  *   `mshField` (*type:* `String.t`, *default:* `nil`) - The field to extract from the MSH segment. For example, "3.1" or "18[1].1".
  *   `value` (*type:* `String.t`, *default:* `nil`) - The value to match with the field. For example, "My Application Name" or "2.3".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mshField => String.t() | nil,
          :value => String.t() | nil
        }

  field(:mshField)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.VersionSource do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.VersionSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.VersionSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
