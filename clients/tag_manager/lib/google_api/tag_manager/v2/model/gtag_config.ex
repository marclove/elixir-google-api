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

defmodule GoogleApi.TagManager.V2.Model.GtagConfig do
  @moduledoc """
  Represents a Google tag configuration.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Google tag account ID.
  *   `containerId` (*type:* `String.t`, *default:* `nil`) - Google tag container ID.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the Google tag config as computed at storage time. This value is recomputed whenever the config is modified.
  *   `gtagConfigId` (*type:* `String.t`, *default:* `nil`) - The ID uniquely identifies the Google tag config.
  *   `parameter` (*type:* `list(GoogleApi.TagManager.V2.Model.Parameter.t)`, *default:* `nil`) - The Google tag config's parameters. @mutable tagmanager.accounts.containers.workspaces.gtag_config.create @mutable tagmanager.accounts.containers.workspaces.gtag_config.update
  *   `path` (*type:* `String.t`, *default:* `nil`) - Google tag config's API relative path.
  *   `tagManagerUrl` (*type:* `String.t`, *default:* `nil`) - Auto generated link to the tag manager UI
  *   `type` (*type:* `String.t`, *default:* `nil`) - Google tag config type. @required tagmanager.accounts.containers.workspaces.gtag_config.create @required tagmanager.accounts.containers.workspaces.gtag_config.update @mutable tagmanager.accounts.containers.workspaces.gtag_config.create @mutable tagmanager.accounts.containers.workspaces.gtag_config.update
  *   `workspaceId` (*type:* `String.t`, *default:* `nil`) - Google tag workspace ID. Only used by GTM containers. Set to 0 otherwise.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :containerId => String.t() | nil,
          :fingerprint => String.t() | nil,
          :gtagConfigId => String.t() | nil,
          :parameter => list(GoogleApi.TagManager.V2.Model.Parameter.t()) | nil,
          :path => String.t() | nil,
          :tagManagerUrl => String.t() | nil,
          :type => String.t() | nil,
          :workspaceId => String.t() | nil
        }

  field(:accountId)
  field(:containerId)
  field(:fingerprint)
  field(:gtagConfigId)
  field(:parameter, as: GoogleApi.TagManager.V2.Model.Parameter, type: :list)
  field(:path)
  field(:tagManagerUrl)
  field(:type)
  field(:workspaceId)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.GtagConfig do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.GtagConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.GtagConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
