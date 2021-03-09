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

defmodule GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsDestination do
  @moduledoc """
  The Cloud Storage location for export.

  ## Attributes

  *   `uriPrefix` (*type:* `String.t`, *default:* `nil`) - The Cloud Storage destination to export to. URI for a Cloud Storage directory where the server writes result files, in the format `gs://{bucket-id}/{path/to/destination/dir}`. If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket referenced in `uri_prefix`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uriPrefix => String.t() | nil
        }

  field(:uriPrefix)
end

defimpl Poison.Decoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsDestination do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsDestination.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
