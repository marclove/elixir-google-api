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

defmodule GoogleApi.Language.V2.Model.XPSColorMapIntColor do
  @moduledoc """
  RGB color and each channel is represented by an integer.

  ## Attributes

  *   `blue` (*type:* `integer()`, *default:* `nil`) - The value should be in range of [0, 255].
  *   `green` (*type:* `integer()`, *default:* `nil`) - The value should be in range of [0, 255].
  *   `red` (*type:* `integer()`, *default:* `nil`) - The value should be in range of [0, 255].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blue => integer() | nil,
          :green => integer() | nil,
          :red => integer() | nil
        }

  field(:blue)
  field(:green)
  field(:red)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.XPSColorMapIntColor do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.XPSColorMapIntColor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.XPSColorMapIntColor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
