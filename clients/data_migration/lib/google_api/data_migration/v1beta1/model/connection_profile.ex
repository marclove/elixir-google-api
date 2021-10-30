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

defmodule GoogleApi.DataMigration.V1beta1.Model.ConnectionProfile do
  @moduledoc """
  A connection profile definition.

  ## Attributes

  *   `cloudsql` (*type:* `GoogleApi.DataMigration.V1beta1.Model.CloudSqlConnectionProfile.t`, *default:* `nil`) - A CloudSQL database connection profile.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The connection profile display name.
  *   `error` (*type:* `GoogleApi.DataMigration.V1beta1.Model.Status.t`, *default:* `nil`) - Output only. The error details in case of state FAILED.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  *   `mysql` (*type:* `GoogleApi.DataMigration.V1beta1.Model.MySqlConnectionProfile.t`, *default:* `nil`) - A MySQL database connection profile.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  *   `provider` (*type:* `String.t`, *default:* `nil`) - The database provider.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The current connection profile state (e.g. DRAFT, READY, or FAILED).
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudsql => GoogleApi.DataMigration.V1beta1.Model.CloudSqlConnectionProfile.t() | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :error => GoogleApi.DataMigration.V1beta1.Model.Status.t() | nil,
          :labels => map() | nil,
          :mysql => GoogleApi.DataMigration.V1beta1.Model.MySqlConnectionProfile.t() | nil,
          :name => String.t() | nil,
          :provider => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:cloudsql, as: GoogleApi.DataMigration.V1beta1.Model.CloudSqlConnectionProfile)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:error, as: GoogleApi.DataMigration.V1beta1.Model.Status)
  field(:labels, type: :map)
  field(:mysql, as: GoogleApi.DataMigration.V1beta1.Model.MySqlConnectionProfile)
  field(:name)
  field(:provider)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1beta1.Model.ConnectionProfile do
  def decode(value, options) do
    GoogleApi.DataMigration.V1beta1.Model.ConnectionProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1beta1.Model.ConnectionProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
