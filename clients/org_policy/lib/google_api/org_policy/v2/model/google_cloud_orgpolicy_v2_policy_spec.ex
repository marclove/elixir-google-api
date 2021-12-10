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

defmodule GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpec do
  @moduledoc """
  Defines a Cloud Organization `PolicySpec` which is used to specify `Constraints` for configurations of Cloud Platform resources.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - An opaque tag indicating the current version of the `Policy`, used for concurrency control. This field is ignored if used in a `CreatePolicy` request. When the `Policy` is returned from either a `GetPolicy` or a `ListPolicies` request, this `etag` indicates the version of the current `Policy` to use when executing a read-modify-write loop. When the `Policy` is returned from a `GetEffectivePolicy` request, the `etag` will be unset.
  *   `inheritFromParent` (*type:* `boolean()`, *default:* `nil`) - Determines the inheritance behavior for this `Policy`. If `inherit_from_parent` is true, PolicyRules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this Policy becomes the new root for evaluation. This field can be set only for Policies which configure list constraints.
  *   `reset` (*type:* `boolean()`, *default:* `nil`) - Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific `Constraint` at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false.
  *   `rules` (*type:* `list(GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpecPolicyRule.t)`, *default:* `nil`) - Up to 10 PolicyRules are allowed. In Policies for boolean constraints, the following requirements apply: - There must be one and only one PolicyRule where condition is unset. - BooleanPolicyRules with conditions must set `enforced` to the opposite of the PolicyRule without a condition. - During policy evaluation, PolicyRules with conditions that are true for a target resource take precedence.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time stamp this was previously updated. This represents the last time a call to `CreatePolicy` or `UpdatePolicy` was made for that `Policy`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :inheritFromParent => boolean() | nil,
          :reset => boolean() | nil,
          :rules =>
            list(GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpecPolicyRule.t())
            | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:etag)
  field(:inheritFromParent)
  field(:reset)

  field(:rules,
    as: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpecPolicyRule,
    type: :list
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpec do
  def decode(value, options) do
    GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
