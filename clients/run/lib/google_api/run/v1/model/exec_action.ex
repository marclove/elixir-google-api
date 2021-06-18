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

defmodule GoogleApi.Run.V1.Model.ExecAction do
  @moduledoc """
  Not supported by Cloud Run ExecAction describes a "run in container" action.

  ## Attributes

  *   `command` (*type:* `list(String.t)`, *default:* `nil`) - (Optional) Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :command => list(String.t()) | nil
        }

  field(:command, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.ExecAction do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.ExecAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.ExecAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
