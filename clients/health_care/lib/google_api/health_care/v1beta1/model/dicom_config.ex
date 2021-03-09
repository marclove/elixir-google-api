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

defmodule GoogleApi.HealthCare.V1beta1.Model.DicomConfig do
  @moduledoc """
  Specifies the parameters needed for de-identification of DICOM stores.

  ## Attributes

  *   `filterProfile` (*type:* `String.t`, *default:* `nil`) - Tag filtering profile that determines which tags to keep/remove.
  *   `keepList` (*type:* `GoogleApi.HealthCare.V1beta1.Model.TagFilterList.t`, *default:* `nil`) - List of tags to keep. Remove all other tags.
  *   `removeList` (*type:* `GoogleApi.HealthCare.V1beta1.Model.TagFilterList.t`, *default:* `nil`) - List of tags to remove. Keep all other tags.
  *   `skipIdRedaction` (*type:* `boolean()`, *default:* `nil`) - If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filterProfile => String.t() | nil,
          :keepList => GoogleApi.HealthCare.V1beta1.Model.TagFilterList.t() | nil,
          :removeList => GoogleApi.HealthCare.V1beta1.Model.TagFilterList.t() | nil,
          :skipIdRedaction => boolean() | nil
        }

  field(:filterProfile)
  field(:keepList, as: GoogleApi.HealthCare.V1beta1.Model.TagFilterList)
  field(:removeList, as: GoogleApi.HealthCare.V1beta1.Model.TagFilterList)
  field(:skipIdRedaction)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.DicomConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.DicomConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.DicomConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
