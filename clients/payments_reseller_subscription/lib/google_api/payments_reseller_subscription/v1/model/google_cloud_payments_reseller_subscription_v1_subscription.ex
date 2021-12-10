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

defmodule GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription do
  @moduledoc """
  A Subscription resource managed by 3P Partners.

  ## Attributes

  *   `cancellationDetails` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails.t`, *default:* `nil`) - Output only. Describes the details of a cancelled subscription. Only applicable to subscription of state `STATE_CANCELLED`.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. System generated timestamp when the subscription is created. UTC timezone.
  *   `cycleEndTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the subscription is expected to be extended, in ISO 8061 format. UTC timezone. For example: "2019-08-31T17:28:54.564Z"
  *   `endUserEntitled` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the subscription is entitled to the end user.
  *   `freeTrialEndTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. End of the free trial period, in ISO 8061 format. For example, "2019-08-31T17:28:54.564Z". It will be set the same as createTime if no free trial promotion is specified.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Response only. Resource name of the subscription. It will have the format of "partners/{partner_id}/subscriptions/{subscription_id}"
  *   `partnerUserToken` (*type:* `String.t`, *default:* `nil`) - Required. Identifier of the end-user in partner’s system. The value is restricted to 63 ASCII characters at the maximum.
  *   `processingState` (*type:* `String.t`, *default:* `nil`) - Output only. Describes the processing state of the subscription. See more details at [the lifecycle of a subscription](/payments/reseller/subscription/reference/index/Receive.Notifications#payments-subscription-lifecycle).
  *   `products` (*type:* `list(String.t)`, *default:* `nil`) - Required. Resource name that identifies one or more subscription products. The format will be 'partners/{partner_id}/products/{product_id}'.
  *   `promotions` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Resource name that identifies one or more promotions that can be applied on the product. A typical promotion for a subscription is Free trial. The format will be 'partners/{partner_id}/promotions/{promotion_id}'.
  *   `redirectUri` (*type:* `String.t`, *default:* `nil`) - Output only. The place where partners should redirect the end-user to after creation. This field might also be populated when creation failed. However, Partners should always prepare a default URL to redirect the user in case this field is empty.
  *   `renewalTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the subscription is expected to be renewed by Google - a new charge will be incurred and the service entitlement will be renewed. A non-immediate cancellation will take place at this time too, before which, the service entitlement for the end user will remain valid. UTC timezone in ISO 8061 format. For example: "2019-08-31T17:28:54.564Z"
  *   `serviceLocation` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Location.t`, *default:* `nil`) - Required. The location that the service is provided as indicated by the partner.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Describes the state of the subscription. See more details at [the lifecycle of a subscription](/payments/reseller/subscription/reference/index/Receive.Notifications#payments-subscription-lifecycle).
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. System generated timestamp when the subscription is most recently updated. UTC timezone.
  *   `upgradeDowngradeDetails` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails.t`, *default:* `nil`) - Optional. Details about the previous subscription that this new subscription upgrades/downgrades from. Only populated if this subscription is an upgrade/downgrade from another subscription.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cancellationDetails =>
            GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails.t()
            | nil,
          :createTime => DateTime.t() | nil,
          :cycleEndTime => DateTime.t() | nil,
          :endUserEntitled => boolean() | nil,
          :freeTrialEndTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :partnerUserToken => String.t() | nil,
          :processingState => String.t() | nil,
          :products => list(String.t()) | nil,
          :promotions => list(String.t()) | nil,
          :redirectUri => String.t() | nil,
          :renewalTime => DateTime.t() | nil,
          :serviceLocation =>
            GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Location.t()
            | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :upgradeDowngradeDetails =>
            GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails.t()
            | nil
        }

  field(:cancellationDetails,
    as:
      GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
  )

  field(:createTime, as: DateTime)
  field(:cycleEndTime, as: DateTime)
  field(:endUserEntitled)
  field(:freeTrialEndTime, as: DateTime)
  field(:name)
  field(:partnerUserToken)
  field(:processingState)
  field(:products, type: :list)
  field(:promotions, type: :list)
  field(:redirectUri)
  field(:renewalTime, as: DateTime)

  field(:serviceLocation,
    as:
      GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Location
  )

  field(:state)
  field(:updateTime, as: DateTime)

  field(:upgradeDowngradeDetails,
    as:
      GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription do
  def decode(value, options) do
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
