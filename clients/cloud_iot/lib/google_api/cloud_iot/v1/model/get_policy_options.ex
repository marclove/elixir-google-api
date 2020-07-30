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

defmodule GoogleApi.CloudIot.V1.Model.GetPolicyOptions do
  @moduledoc """
  Encapsulates settings provided to GetIamPolicy.

  ## Attributes

  *   `requestedPolicyVersion` (*type:* `integer()`, *default:* `nil`) - Optional. The policy format version to be returned.

      Valid values are 0, 1, and 3. Requests specifying an invalid value will be
      rejected.

      Requests for policies with any conditional bindings must specify version 3.
      Policies without any conditional bindings may specify any valid value or
      leave the field unset.

      To learn which resources support conditions in their IAM policies, see the
      [IAM
      documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requestedPolicyVersion => integer()
        }

  field(:requestedPolicyVersion)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.GetPolicyOptions do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.GetPolicyOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.GetPolicyOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
