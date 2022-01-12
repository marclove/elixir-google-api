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

defmodule GoogleApi.Content.V21.Model.AccountImageImprovements do
  @moduledoc """
  This improvement will attempt to automatically correct submitted images if they don't meet the [image requirements](https://support.google.com/merchants/answer/6324350), for example, removing overlays. If successful, the image will be replaced and approved. This improvement is only applied to images of disapproved offers. For more information see: [Automatic image improvements](https://support.google.com/merchants/answer/9242973)

  ## Attributes

  *   `accountImageImprovementsSettings` (*type:* `GoogleApi.Content.V21.Model.AccountImageImprovementsSettings.t`, *default:* `nil`) - Determines how the images should be automatically updated. If this field is not present, then the settings will be deleted. If there are no settings for subaccount, they are inherited from aggregator.
  *   `effectiveAllowAutomaticImageImprovements` (*type:* `boolean()`, *default:* `nil`) - Output only. The effective value of allow_automatic_image_improvements. If account_image_improvements_settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountImageImprovementsSettings =>
            GoogleApi.Content.V21.Model.AccountImageImprovementsSettings.t() | nil,
          :effectiveAllowAutomaticImageImprovements => boolean() | nil
        }

  field(:accountImageImprovementsSettings,
    as: GoogleApi.Content.V21.Model.AccountImageImprovementsSettings
  )

  field(:effectiveAllowAutomaticImageImprovements)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountImageImprovements do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountImageImprovements.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountImageImprovements do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
