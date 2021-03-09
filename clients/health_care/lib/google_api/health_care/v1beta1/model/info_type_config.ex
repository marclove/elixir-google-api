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

defmodule GoogleApi.HealthCare.V1beta1.Model.InfoTypeConfig do
  @moduledoc """
  Specifies how to use infoTypes for evaluation. For example, a user might only want to evaluate `PERSON`, `LOCATION`, and `AGE`.

  ## Attributes

  *   `evaluateList` (*type:* `GoogleApi.HealthCare.V1beta1.Model.FilterList.t`, *default:* `nil`) - 
  *   `ignoreList` (*type:* `GoogleApi.HealthCare.V1beta1.Model.FilterList.t`, *default:* `nil`) - 
  *   `strictMatching` (*type:* `boolean()`, *default:* `nil`) - If `TRUE`, infoTypes described by `filter` are used for evaluation. Otherwise, infoTypes are not considered for evaluation. For example: * Annotated text: "Toronto is a location" * Finding 1: `{"infoType": "PERSON", "quote": "Toronto", "start": 0, "end": 7}` * Finding 2: `{"infoType": "CITY", "quote": "Toronto", "start": 0, "end": 7}` * Finding 3: `{}` * Ground truth: `{"infoType": "LOCATION", "quote": "Toronto", "start": 0, "end": 7}` When `strict_matching` is `TRUE`: * Finding 1: 1 false positive * Finding 2: 1 false positive * Finding 3: 1 false negative When `strict_matching` is `FALSE`: * Finding 1: 1 true positive * Finding 2: 1 true positive * Finding 3: 1 false negative
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evaluateList => GoogleApi.HealthCare.V1beta1.Model.FilterList.t() | nil,
          :ignoreList => GoogleApi.HealthCare.V1beta1.Model.FilterList.t() | nil,
          :strictMatching => boolean() | nil
        }

  field(:evaluateList, as: GoogleApi.HealthCare.V1beta1.Model.FilterList)
  field(:ignoreList, as: GoogleApi.HealthCare.V1beta1.Model.FilterList)
  field(:strictMatching)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.InfoTypeConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.InfoTypeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.InfoTypeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
