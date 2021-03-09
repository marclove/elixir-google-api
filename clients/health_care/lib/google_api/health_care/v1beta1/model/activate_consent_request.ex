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

defmodule GoogleApi.HealthCare.V1beta1.Model.ActivateConsentRequest do
  @moduledoc """
  Activates the latest revision of the specified Consent by committing a new revision with `state` updated to `ACTIVE`. If the latest revision of the given Consent is in the `ACTIVE` state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the given consent is in the `REJECTED` or `REVOKED` state.

  ## Attributes

  *   `consentArtifact` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the Consent artifact that contains documentation of the user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. If the draft Consent had a Consent artifact, this Consent artifact overwrites it.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp in UTC of when this Consent is considered expired.
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - The time to live for this Consent from when it is marked as active.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consentArtifact => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :ttl => String.t() | nil
        }

  field(:consentArtifact)
  field(:expireTime, as: DateTime)
  field(:ttl)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ActivateConsentRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ActivateConsentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ActivateConsentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
