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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.Database do
  @moduledoc """
  Represents a SQL database on the Cloud SQL instance.

  ## Attributes

  *   `charset` (*type:* `String.t`, *default:* `nil`) - The MySQL charset value.
  *   `collation` (*type:* `String.t`, *default:* `nil`) - The MySQL collation value.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This field is deprecated and will be removed from a future version of the
      API.
  *   `instance` (*type:* `String.t`, *default:* `nil`) - The name of the Cloud SQL instance. This does not include the project ID.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always <code>sql#database</code>.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the database in the Cloud SQL instance. This does not include
      the project ID or instance name.
  *   `project` (*type:* `String.t`, *default:* `nil`) - The project ID of the project containing the Cloud SQL database. The Google
      apps domain is prefixed if applicable.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The URI of this resource.
  *   `sqlserverDatabaseDetails` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.SqlServerDatabaseDetails.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :charset => String.t(),
          :collation => String.t(),
          :etag => String.t(),
          :instance => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :project => String.t(),
          :selfLink => String.t(),
          :sqlserverDatabaseDetails =>
            GoogleApi.SQLAdmin.V1beta4.Model.SqlServerDatabaseDetails.t()
        }

  field(:charset)
  field(:collation)
  field(:etag)
  field(:instance)
  field(:kind)
  field(:name)
  field(:project)
  field(:selfLink)
  field(:sqlserverDatabaseDetails, as: GoogleApi.SQLAdmin.V1beta4.Model.SqlServerDatabaseDetails)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Database do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.Database.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Database do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
