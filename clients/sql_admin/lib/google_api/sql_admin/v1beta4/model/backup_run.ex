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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.BackupRun do
  @moduledoc """
  A BackupRun resource.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of this run, only applicable to on-demand backups.
  *   `diskEncryptionConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration.t`, *default:* `nil`) - Encryption configuration specific to a backup.
      Applies only to Second Generation instances.
  *   `diskEncryptionStatus` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus.t`, *default:* `nil`) - Encryption status specific to a backup.
      Applies only to Second Generation instances.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the backup operation completed in UTC timezone in <a
      href="https://tools.ietf.org/html/rfc3339">RFC 3339</a> format, for example
      <code>2012-11-15T16:19:00.094Z</code>.
  *   `enqueuedTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the run was enqueued in UTC timezone in <a
      href="https://tools.ietf.org/html/rfc3339">RFC 3339</a> format, for example
      <code>2012-11-15T16:19:00.094Z</code>.
  *   `error` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.OperationError.t`, *default:* `nil`) - Information about why the backup operation failed. This is only present if
      the run has the FAILED status.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The identifier for this backup run. Unique only for a specific Cloud SQL
      instance.
  *   `instance` (*type:* `String.t`, *default:* `nil`) - Name of the database instance.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always <code>sql#backupRun</code>.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Location of the backups.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The URI of this resource.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the backup operation actually started in UTC timezone in <a
      href="https://tools.ietf.org/html/rfc3339">RFC 3339</a> format, for example
      <code>2012-11-15T16:19:00.094Z</code>.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of this run.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of this run; can be either "AUTOMATED" or "ON_DEMAND".
  *   `windowStartTime` (*type:* `DateTime.t`, *default:* `nil`) - The start time of the backup window during which this the backup was
      attempted in <a href="https://tools.ietf.org/html/rfc3339">RFC 3339</a>
      format, for example <code>2012-11-15T16:19:00.094Z</code>.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :diskEncryptionConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration.t(),
          :diskEncryptionStatus => GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus.t(),
          :endTime => DateTime.t(),
          :enqueuedTime => DateTime.t(),
          :error => GoogleApi.SQLAdmin.V1beta4.Model.OperationError.t(),
          :id => String.t(),
          :instance => String.t(),
          :kind => String.t(),
          :location => String.t(),
          :selfLink => String.t(),
          :startTime => DateTime.t(),
          :status => String.t(),
          :type => String.t(),
          :windowStartTime => DateTime.t()
        }

  field(:description)

  field(
    :diskEncryptionConfiguration,
    as: GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration
  )

  field(:diskEncryptionStatus, as: GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus)
  field(:endTime, as: DateTime)
  field(:enqueuedTime, as: DateTime)
  field(:error, as: GoogleApi.SQLAdmin.V1beta4.Model.OperationError)
  field(:id)
  field(:instance)
  field(:kind)
  field(:location)
  field(:selfLink)
  field(:startTime, as: DateTime)
  field(:status)
  field(:type)
  field(:windowStartTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupRun do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.BackupRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
