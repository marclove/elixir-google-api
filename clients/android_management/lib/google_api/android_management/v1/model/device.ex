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

defmodule GoogleApi.AndroidManagement.V1.Model.Device do
  @moduledoc """
  A device owned by an enterprise. Unless otherwise noted, all fields are read-only and can't be modified by enterprises.devices.patch.

  ## Attributes

  *   `appliedState` (*type:* `String.t`, *default:* `nil`) - The state currently applied to the device.
  *   `managementMode` (*type:* `String.t`, *default:* `nil`) - The type of management mode Android Device Policy takes on the device. This influences which policy settings are supported.
  *   `previousDeviceNames` (*type:* `list(String.t)`, *default:* `nil`) - If the same physical device has been enrolled multiple times, this field contains its previous device names. The serial number is used as the unique identifier to determine if the same physical device has enrolled previously. The names are in chronological order.
  *   `hardwareInfo` (*type:* `GoogleApi.AndroidManagement.V1.Model.HardwareInfo.t`, *default:* `nil`) - Detailed information about the device hardware.
  *   `enrollmentTokenData` (*type:* `String.t`, *default:* `nil`) - If the device was enrolled with an enrollment token with additional data provided, this field contains that data.
  *   `memoryEvents` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.MemoryEvent.t)`, *default:* `nil`) - Events related to memory and storage measurements in chronological order. This information is only available if memoryInfoEnabled is true in the device's policy.
  *   `securityPosture` (*type:* `GoogleApi.AndroidManagement.V1.Model.SecurityPosture.t`, *default:* `nil`) - Device's security posture value that reflects how secure the device is.
  *   `memoryInfo` (*type:* `GoogleApi.AndroidManagement.V1.Model.MemoryInfo.t`, *default:* `nil`) - Memory information. This information is only available if memoryInfoEnabled is true in the device's policy.
  *   `policyCompliant` (*type:* `boolean()`, *default:* `nil`) - Whether the device is compliant with its policy.
  *   `deviceSettings` (*type:* `GoogleApi.AndroidManagement.V1.Model.DeviceSettings.t`, *default:* `nil`) - Device settings information. This information is only available if deviceSettingsEnabled is true in the device's policy.
  *   `lastPolicyComplianceReportTime` (*type:* `DateTime.t`, *default:* `nil`) - Deprecated.
  *   `displays` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.Display.t)`, *default:* `nil`) - Detailed information about displays on the device. This information is only available if displayInfoEnabled is true in the device's policy.
  *   `disabledReason` (*type:* `GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t`, *default:* `nil`) - If the device state is DISABLED, an optional message that is displayed on the device indicating the reason the device is disabled. This field can be modified by a patch request.
  *   `lastStatusReportTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time the device sent a status report.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state to be applied to the device. This field can be modified by a patch request. Note that when calling enterprises.devices.patch, ACTIVE and DISABLED are the only allowable values. To enter the device into a DELETED state, call enterprises.devices.delete.
  *   `networkInfo` (*type:* `GoogleApi.AndroidManagement.V1.Model.NetworkInfo.t`, *default:* `nil`) - Device network information. This information is only available if networkInfoEnabled is true in the device's policy.
  *   `hardwareStatusSamples` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.HardwareStatus.t)`, *default:* `nil`) - Hardware status samples in chronological order. This information is only available if hardwareStatusEnabled is true in the device's policy.
  *   `powerManagementEvents` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PowerManagementEvent.t)`, *default:* `nil`) - Power management events on the device in chronological order. This information is only available if powerManagementEventsEnabled is true in the device's policy.
  *   `appliedPolicyName` (*type:* `String.t`, *default:* `nil`) - The name of the policy currently applied to the device.
  *   `applicationReports` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ApplicationReport.t)`, *default:* `nil`) - Reports for apps installed on the device. This information is only available when application_reports_enabled is true in the device's policy.
  *   `userName` (*type:* `String.t`, *default:* `nil`) - The resource name of the user that owns this device in the form enterprises/{enterpriseId}/users/{userId}.
  *   `nonComplianceDetails` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail.t)`, *default:* `nil`) - Details about policy settings that the device is not compliant with.
  *   `lastPolicySyncTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time the device fetched its policy.
  *   `user` (*type:* `GoogleApi.AndroidManagement.V1.Model.User.t`, *default:* `nil`) - The user who owns the device.
  *   `systemProperties` (*type:* `map()`, *default:* `nil`) - Map of selected system properties name and value related to the device. This information is only available if systemPropertiesEnabled is true in the device's policy.
  *   `enrollmentTime` (*type:* `DateTime.t`, *default:* `nil`) - The time of device enrollment.
  *   `appliedPolicyVersion` (*type:* `String.t`, *default:* `nil`) - The version of the policy currently applied to the device.
  *   `policyName` (*type:* `String.t`, *default:* `nil`) - The name of the policy applied to the device, in the form enterprises/{enterpriseId}/policies/{policyId}. If not specified, the policy_name for the device's user is applied. This field can be modified by a patch request. You can specify only the policyId when calling enterprises.devices.patch, as long as the policyId doesn’t contain any slashes. The rest of the policy name is inferred.
  *   `apiLevel` (*type:* `integer()`, *default:* `nil`) - The API level of the Android platform version running on the device.
  *   `enrollmentTokenName` (*type:* `String.t`, *default:* `nil`) - If the device was enrolled with an enrollment token, this field contains the name of the token.
  *   `softwareInfo` (*type:* `GoogleApi.AndroidManagement.V1.Model.SoftwareInfo.t`, *default:* `nil`) - Detailed information about the device software. This information is only available if softwareInfoEnabled is true in the device's policy.
  *   `ownership` (*type:* `String.t`, *default:* `nil`) - Ownership of the managed device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appliedState => String.t(),
          :managementMode => String.t(),
          :previousDeviceNames => list(String.t()),
          :hardwareInfo => GoogleApi.AndroidManagement.V1.Model.HardwareInfo.t(),
          :enrollmentTokenData => String.t(),
          :memoryEvents => list(GoogleApi.AndroidManagement.V1.Model.MemoryEvent.t()),
          :securityPosture => GoogleApi.AndroidManagement.V1.Model.SecurityPosture.t(),
          :memoryInfo => GoogleApi.AndroidManagement.V1.Model.MemoryInfo.t(),
          :policyCompliant => boolean(),
          :deviceSettings => GoogleApi.AndroidManagement.V1.Model.DeviceSettings.t(),
          :lastPolicyComplianceReportTime => DateTime.t(),
          :displays => list(GoogleApi.AndroidManagement.V1.Model.Display.t()),
          :disabledReason => GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t(),
          :lastStatusReportTime => DateTime.t(),
          :name => String.t(),
          :state => String.t(),
          :networkInfo => GoogleApi.AndroidManagement.V1.Model.NetworkInfo.t(),
          :hardwareStatusSamples => list(GoogleApi.AndroidManagement.V1.Model.HardwareStatus.t()),
          :powerManagementEvents =>
            list(GoogleApi.AndroidManagement.V1.Model.PowerManagementEvent.t()),
          :appliedPolicyName => String.t(),
          :applicationReports => list(GoogleApi.AndroidManagement.V1.Model.ApplicationReport.t()),
          :userName => String.t(),
          :nonComplianceDetails =>
            list(GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail.t()),
          :lastPolicySyncTime => DateTime.t(),
          :user => GoogleApi.AndroidManagement.V1.Model.User.t(),
          :systemProperties => map(),
          :enrollmentTime => DateTime.t(),
          :appliedPolicyVersion => String.t(),
          :policyName => String.t(),
          :apiLevel => integer(),
          :enrollmentTokenName => String.t(),
          :softwareInfo => GoogleApi.AndroidManagement.V1.Model.SoftwareInfo.t(),
          :ownership => String.t()
        }

  field(:appliedState)
  field(:managementMode)
  field(:previousDeviceNames, type: :list)
  field(:hardwareInfo, as: GoogleApi.AndroidManagement.V1.Model.HardwareInfo)
  field(:enrollmentTokenData)
  field(:memoryEvents, as: GoogleApi.AndroidManagement.V1.Model.MemoryEvent, type: :list)
  field(:securityPosture, as: GoogleApi.AndroidManagement.V1.Model.SecurityPosture)
  field(:memoryInfo, as: GoogleApi.AndroidManagement.V1.Model.MemoryInfo)
  field(:policyCompliant)
  field(:deviceSettings, as: GoogleApi.AndroidManagement.V1.Model.DeviceSettings)
  field(:lastPolicyComplianceReportTime, as: DateTime)
  field(:displays, as: GoogleApi.AndroidManagement.V1.Model.Display, type: :list)
  field(:disabledReason, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:lastStatusReportTime, as: DateTime)
  field(:name)
  field(:state)
  field(:networkInfo, as: GoogleApi.AndroidManagement.V1.Model.NetworkInfo)

  field(:hardwareStatusSamples,
    as: GoogleApi.AndroidManagement.V1.Model.HardwareStatus,
    type: :list
  )

  field(:powerManagementEvents,
    as: GoogleApi.AndroidManagement.V1.Model.PowerManagementEvent,
    type: :list
  )

  field(:appliedPolicyName)

  field(:applicationReports,
    as: GoogleApi.AndroidManagement.V1.Model.ApplicationReport,
    type: :list
  )

  field(:userName)

  field(:nonComplianceDetails,
    as: GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail,
    type: :list
  )

  field(:lastPolicySyncTime, as: DateTime)
  field(:user, as: GoogleApi.AndroidManagement.V1.Model.User)
  field(:systemProperties, type: :map)
  field(:enrollmentTime, as: DateTime)
  field(:appliedPolicyVersion)
  field(:policyName)
  field(:apiLevel)
  field(:enrollmentTokenName)
  field(:softwareInfo, as: GoogleApi.AndroidManagement.V1.Model.SoftwareInfo)
  field(:ownership)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Device do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Device.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
