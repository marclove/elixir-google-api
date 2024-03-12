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

defmodule GoogleApi.AnalyticsData.V1beta.Model.SamplingMetadata do
  @moduledoc """
  If this report results is [sampled](https://support.google.com/analytics/answer/13331292), this describes the percentage of events used in this report. Sampling is the practice of analyzing a subset of all data in order to uncover the meaningful information in the larger data set.

  ## Attributes

  *   `samplesReadCount` (*type:* `String.t`, *default:* `nil`) - The total number of events read in this sampled report for a date range. This is the size of the subset this property's data that was analyzed in this report.
  *   `samplingSpaceSize` (*type:* `String.t`, *default:* `nil`) - The total number of events present in this property's data that could have been analyzed in this report for a date range. Sampling uncovers the meaningful information about the larger data set, and this is the size of the larger data set. To calculate the percentage of available data that was used in this report, compute `samplesReadCount/samplingSpaceSize`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :samplesReadCount => String.t() | nil,
          :samplingSpaceSize => String.t() | nil
        }

  field(:samplesReadCount)
  field(:samplingSpaceSize)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.SamplingMetadata do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.SamplingMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.SamplingMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
