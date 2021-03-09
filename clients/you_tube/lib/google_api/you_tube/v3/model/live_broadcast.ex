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

defmodule GoogleApi.YouTube.V3.Model.LiveBroadcast do
  @moduledoc """
  A *liveBroadcast* resource represents an event that will be streamed, via live video, on YouTube.

  ## Attributes

  *   `contentDetails` (*type:* `GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails.t`, *default:* `nil`) - The contentDetails object contains information about the event's video content, such as whether the content can be shown in an embedded video player or if it will be archived and therefore available for viewing after the event has concluded.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube assigns to uniquely identify the broadcast.
  *   `kind` (*type:* `String.t`, *default:* `youtube#liveBroadcast`) - Identifies what kind of resource this is. Value: the fixed string "youtube#liveBroadcast".
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.LiveBroadcastSnippet.t`, *default:* `nil`) - The snippet object contains basic details about the event, including its title, description, start time, and end time.
  *   `statistics` (*type:* `GoogleApi.YouTube.V3.Model.LiveBroadcastStatistics.t`, *default:* `nil`) - The statistics object contains info about the event's current stats. These include concurrent viewers and total chat count. Statistics can change (in either direction) during the lifetime of an event. Statistics are only returned while the event is live.
  *   `status` (*type:* `GoogleApi.YouTube.V3.Model.LiveBroadcastStatus.t`, *default:* `nil`) - The status object contains information about the event's status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentDetails => GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails.t() | nil,
          :etag => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :snippet => GoogleApi.YouTube.V3.Model.LiveBroadcastSnippet.t() | nil,
          :statistics => GoogleApi.YouTube.V3.Model.LiveBroadcastStatistics.t() | nil,
          :status => GoogleApi.YouTube.V3.Model.LiveBroadcastStatus.t() | nil
        }

  field(:contentDetails, as: GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails)
  field(:etag)
  field(:id)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.LiveBroadcastSnippet)
  field(:statistics, as: GoogleApi.YouTube.V3.Model.LiveBroadcastStatistics)
  field(:status, as: GoogleApi.YouTube.V3.Model.LiveBroadcastStatus)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcast do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveBroadcast.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcast do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
