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

defmodule GoogleApi.BigtableAdmin.V2.Model.Type do
  @moduledoc """
  `Type` represents the type of data that is written to, read from, or stored in Bigtable. It is heavily based on the GoogleSQL standard to help maintain familiarity and consistency across products and features. For compatibility with Bigtable's existing untyped APIs, each `Type` includes an `Encoding` which describes how to convert to/from the underlying data. This might involve composing a series of steps into an "encoding chain," for example to convert from INT64 -> STRING -> raw bytes. In most cases, a "link" in the encoding chain will be based an on existing GoogleSQL conversion function like `CAST`. Each link in the encoding chain also defines the following properties: * Natural sort: Does the encoded value sort consistently with the original typed value? Note that Bigtable will always sort data based on the raw encoded value, *not* the decoded type. - Example: STRING values sort in the same order as their UTF-8 encodings. - Counterexample: Encoding INT64 to a fixed-width STRING does *not* preserve sort order when dealing with negative numbers. INT64(1) > INT64(-1), but STRING("-00001") > STRING("00001). - The overall encoding chain sorts naturally if *every* link does. * Self-delimiting: If we concatenate two encoded values, can we always tell where the first one ends and the second one begins? - Example: If we encode INT64s to fixed-width STRINGs, the first value will always contain exactly N digits, possibly preceded by a sign. - Counterexample: If we concatenate two UTF-8 encoded STRINGs, we have no way to tell where the first one ends. - The overall encoding chain is self-delimiting if *any* link is. * Compatibility: Which other systems have matching encoding schemes? For example, does this encoding have a GoogleSQL equivalent? HBase? Java?

  ## Attributes

  *   `aggregateType` (*type:* `GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeAggregate.t`, *default:* `nil`) - Aggregate
  *   `bytesType` (*type:* `GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeBytes.t`, *default:* `nil`) - Bytes
  *   `int64Type` (*type:* `GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeInt64.t`, *default:* `nil`) - Int64
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregateType =>
            GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeAggregate.t() | nil,
          :bytesType => GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeBytes.t() | nil,
          :int64Type => GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeInt64.t() | nil
        }

  field(:aggregateType, as: GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeAggregate)
  field(:bytesType, as: GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeBytes)
  field(:int64Type, as: GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeInt64)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.Type do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.Type.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.Type do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
