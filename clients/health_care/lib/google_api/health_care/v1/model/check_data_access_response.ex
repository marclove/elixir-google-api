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

defmodule GoogleApi.HealthCare.V1.Model.CheckDataAccessResponse do
  @moduledoc """
  Checks if a particular data_id of a User data mapping in the given consent store is consented for a given use.

  ## Attributes

  *   `consentDetails` (*type:* `%{optional(String.t) => GoogleApi.HealthCare.V1.Model.ConsentEvaluation.t}`, *default:* `nil`) - The resource names of all evaluated Consents mapped to their evaluation.
  *   `consented` (*type:* `boolean()`, *default:* `nil`) - Whether the requested resource is consented for the given use.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consentDetails =>
            %{optional(String.t()) => GoogleApi.HealthCare.V1.Model.ConsentEvaluation.t()} | nil,
          :consented => boolean() | nil
        }

  field(:consentDetails, as: GoogleApi.HealthCare.V1.Model.ConsentEvaluation, type: :map)
  field(:consented)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.CheckDataAccessResponse do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.CheckDataAccessResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.CheckDataAccessResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
