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

defmodule GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHit do
  @moduledoc """


  ## Attributes

  *   `clientInfo` (*type:* `GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ClientInfo.t`, *default:* `nil`) - Client-reported identification.
  *   `entry` (*type:* `GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatEntry.t`, *default:* `nil`) - The threat entry responsible for the hit. Full hash should be reported for hash-based hits.
  *   `platformType` (*type:* `String.t`, *default:* `nil`) - The platform type reported.
  *   `resources` (*type:* `list(GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHitThreatSource.t)`, *default:* `nil`) - The resources related to the threat hit.
  *   `threatType` (*type:* `String.t`, *default:* `nil`) - The threat type reported.
  *   `userInfo` (*type:* `GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHitUserInfo.t`, *default:* `nil`) - Details about the user that encountered the threat.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientInfo =>
            GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ClientInfo.t() | nil,
          :entry =>
            GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatEntry.t() | nil,
          :platformType => String.t() | nil,
          :resources =>
            list(
              GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHitThreatSource.t()
            )
            | nil,
          :threatType => String.t() | nil,
          :userInfo =>
            GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHitUserInfo.t()
            | nil
        }

  field(:clientInfo, as: GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ClientInfo)
  field(:entry, as: GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatEntry)
  field(:platformType)

  field(:resources,
    as: GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHitThreatSource,
    type: :list
  )

  field(:threatType)

  field(:userInfo,
    as: GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHitUserInfo
  )
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHit do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatHit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
