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

defmodule GoogleApi.AndroidManagement.V1.Model.SigninDetail do
  @moduledoc """
  A resource containing sign in details for an enterprise.

  ## Attributes

  *   `allowPersonalUsage` (*type:* `String.t`, *default:* `nil`) - Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices:
      Enabling personal usage allows the user to set up a work profile on the device.
      Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices:
      Enabling personal usage allows the user to set up a work profile on the device.
      Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.
  *   `qrCode` (*type:* `String.t`, *default:* `nil`) - A JSON string whose UTF-8 representation can be used to generate a QR code to enroll a device with this enrollment token. To enroll a device using NFC, the NFC record must contain a serialized java.util.Properties representation of the properties in the JSON. This is a read-only field generated by the server.
  *   `signinEnrollmentToken` (*type:* `String.t`, *default:* `nil`) - An enterprise wide enrollment token used to trigger custom sign-in flow. This is a read-only field generated by the server.
  *   `signinUrl` (*type:* `String.t`, *default:* `nil`) - Sign-in URL for authentication when device is provisioned with a sign-in enrollment token. The sign-in endpoint should finish authentication flow with a URL in the form of https://enterprise.google.com/android/enroll?et=<token> for a successful login, or https://enterprise.google.com/android/enroll/invalid for a failed login.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowPersonalUsage => String.t(),
          :qrCode => String.t(),
          :signinEnrollmentToken => String.t(),
          :signinUrl => String.t()
        }

  field(:allowPersonalUsage)
  field(:qrCode)
  field(:signinEnrollmentToken)
  field(:signinUrl)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.SigninDetail do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.SigninDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.SigninDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
