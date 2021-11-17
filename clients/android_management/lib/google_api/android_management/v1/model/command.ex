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

defmodule GoogleApi.AndroidManagement.V1.Model.Command do
  @moduledoc """
  A command.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp at which the command was created. The timestamp is automatically generated by the server.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - The duration for which the command is valid. The command will expire if not executed by the device during this time. The default duration if unspecified is ten minutes. There is no maximum duration.
  *   `errorCode` (*type:* `String.t`, *default:* `nil`) - If the command failed, an error code explaining the failure. This is not set when the command is cancelled by the caller.
  *   `newPassword` (*type:* `String.t`, *default:* `nil`) - For commands of type RESET_PASSWORD, optionally specifies the new password.
  *   `resetPasswordFlags` (*type:* `list(String.t)`, *default:* `nil`) - For commands of type RESET_PASSWORD, optionally specifies flags.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the command. See also params
  *   `userName` (*type:* `String.t`, *default:* `nil`) - The resource name of the user that owns the device in the form enterprises/{enterpriseId}/users/{userId}. This is automatically generated by the server based on the device the command is sent to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :duration => String.t() | nil,
          :errorCode => String.t() | nil,
          :newPassword => String.t() | nil,
          :resetPasswordFlags => list(String.t()) | nil,
          :type => String.t() | nil,
          :userName => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:duration)
  field(:errorCode)
  field(:newPassword)
  field(:resetPasswordFlags, type: :list)
  field(:type)
  field(:userName)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Command do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Command.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Command do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
