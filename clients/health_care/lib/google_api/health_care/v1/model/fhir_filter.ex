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

defmodule GoogleApi.HealthCare.V1.Model.FhirFilter do
  @moduledoc """
  Filter configuration.

  ## Attributes

  *   `resources` (*type:* `GoogleApi.HealthCare.V1.Model.Resources.t`, *default:* `nil`) - List of resources to include in the output. If this list is empty or not specified, all resources are included in the output.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resources => GoogleApi.HealthCare.V1.Model.Resources.t() | nil
        }

  field(:resources, as: GoogleApi.HealthCare.V1.Model.Resources)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.FhirFilter do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.FhirFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.FhirFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
