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

defmodule GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo do
  @moduledoc """
  For display only. Metadata associated with a Compute Engine VPN gateway.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of a VPN gateway.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - IP address of the VPN gateway.
  *   `networkUri` (*type:* `String.t`, *default:* `nil`) - URI of a Compute Engine network where the VPN gateway is configured.
  *   `region` (*type:* `String.t`, *default:* `nil`) - Name of a Google Cloud region where this VPN gateway is configured.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI of a VPN gateway.
  *   `vpnTunnelUri` (*type:* `String.t`, *default:* `nil`) - A VPN tunnel that is associated with this VPN gateway. There may be multiple VPN tunnels configured on a VPN gateway, and only the one relevant to the test is displayed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :ipAddress => String.t() | nil,
          :networkUri => String.t() | nil,
          :region => String.t() | nil,
          :uri => String.t() | nil,
          :vpnTunnelUri => String.t() | nil
        }

  field(:displayName)
  field(:ipAddress)
  field(:networkUri)
  field(:region)
  field(:uri)
  field(:vpnTunnelUri)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
