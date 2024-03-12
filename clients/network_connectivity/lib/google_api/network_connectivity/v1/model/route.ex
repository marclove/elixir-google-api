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

defmodule GoogleApi.NetworkConnectivity.V1.Model.Route do
  @moduledoc """
  A route defines a path from VM instances within a spoke to a specific destination resource. Only VPC spokes have routes.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the route was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of the route.
  *   `ipCidrRange` (*type:* `String.t`, *default:* `nil`) - The destination IP address range.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  *   `location` (*type:* `String.t`, *default:* `nil`) - Output only. The origin location of the route. Uses the following form: "projects/{project}/locations/{location}" Example: projects/1234/locations/us-central1
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the route. Route names must be unique. Route names use the following form: `projects/{project_number}/locations/global/hubs/{hub}/routeTables/{route_table_id}/routes/{route_id}`
  *   `nextHopVpcNetwork` (*type:* `GoogleApi.NetworkConnectivity.V1.Model.NextHopVpcNetwork.t`, *default:* `nil`) - Immutable. The destination VPC network for packets on this route.
  *   `spoke` (*type:* `String.t`, *default:* `nil`) - Immutable. The spoke that this route leads to. Example: projects/12345/locations/global/spokes/SPOKE
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current lifecycle state of the route.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. The route's type. Its type is determined by the properties of its IP address range.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The Google-generated UUID for the route. This value is unique across all Network Connectivity Center route resources. If a route is deleted and another with the same name is created, the new route is assigned a different `uid`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the route was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :ipCidrRange => String.t() | nil,
          :labels => map() | nil,
          :location => String.t() | nil,
          :name => String.t() | nil,
          :nextHopVpcNetwork =>
            GoogleApi.NetworkConnectivity.V1.Model.NextHopVpcNetwork.t() | nil,
          :spoke => String.t() | nil,
          :state => String.t() | nil,
          :type => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:ipCidrRange)
  field(:labels, type: :map)
  field(:location)
  field(:name)
  field(:nextHopVpcNetwork, as: GoogleApi.NetworkConnectivity.V1.Model.NextHopVpcNetwork)
  field(:spoke)
  field(:state)
  field(:type)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.Route do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.Route.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.Route do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
