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

defmodule GoogleApi.ServiceControl.V1.Model.TraceSpan do
  @moduledoc """
  A span represents a single operation within a trace. Spans can be
  nested to form a trace tree. Often, a trace contains a root span
  that describes the end-to-end latency, and one or more subspans for
  its sub-operations. A trace can also contain multiple root spans,
  or none at all. Spans do not need to be contiguous&mdash;there may be
  gaps or overlaps between spans in a trace.

  ## Attributes

  *   `attributes` (*type:* `GoogleApi.ServiceControl.V1.Model.Attributes.t`, *default:* `nil`) - A set of attributes on the span. You can have up to 32 attributes per
      span.
  *   `childSpanCount` (*type:* `integer()`, *default:* `nil`) - An optional number of child spans that were generated while this span
      was active. If set, allows implementation to detect missing child spans.
  *   `displayName` (*type:* `GoogleApi.ServiceControl.V1.Model.TruncatableString.t`, *default:* `nil`) - A description of the span's operation (up to 128 bytes).
      Stackdriver Trace displays the description in the
      Google Cloud Platform Console.
      For example, the display name can be a qualified method name or a file name
      and a line number where the operation is called. A best practice is to use
      the same display name within an application and at the same call point.
      This makes it easier to correlate spans in different traces.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The end time of the span. On the client side, this is the time kept by
      the local machine where the span execution ends. On the server side, this
      is the time when the server application handler stops running.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the span in the following format:

          projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/SPAN_ID is a unique identifier for a trace within a project;
      it is a 32-character hexadecimal encoding of a 16-byte array.

      [SPAN_ID] is a unique identifier for a span within a trace; it
      is a 16-character hexadecimal encoding of an 8-byte array.
  *   `parentSpanId` (*type:* `String.t`, *default:* `nil`) - The [SPAN_ID] of this span's parent span. If this is a root span,
      then this field must be empty.
  *   `sameProcessAsParentSpan` (*type:* `boolean()`, *default:* `nil`) - (Optional) Set this parameter to indicate whether this span is in
      the same process as its parent. If you do not set this parameter,
      Stackdriver Trace is unable to take advantage of this helpful
      information.
  *   `spanId` (*type:* `String.t`, *default:* `nil`) - The [SPAN_ID] portion of the span's resource name.
  *   `spanKind` (*type:* `String.t`, *default:* `nil`) - Distinguishes between spans generated in a particular context. For example,
      two spans with the same name may be distinguished using `CLIENT` (caller)
      and `SERVER` (callee) to identify an RPC call.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The start time of the span. On the client side, this is the time kept by
      the local machine where the span execution starts. On the server side, this
      is the time when the server's application handler starts running.
  *   `status` (*type:* `GoogleApi.ServiceControl.V1.Model.Status.t`, *default:* `nil`) - An optional final status for this span.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => GoogleApi.ServiceControl.V1.Model.Attributes.t(),
          :childSpanCount => integer(),
          :displayName => GoogleApi.ServiceControl.V1.Model.TruncatableString.t(),
          :endTime => DateTime.t(),
          :name => String.t(),
          :parentSpanId => String.t(),
          :sameProcessAsParentSpan => boolean(),
          :spanId => String.t(),
          :spanKind => String.t(),
          :startTime => DateTime.t(),
          :status => GoogleApi.ServiceControl.V1.Model.Status.t()
        }

  field(:attributes, as: GoogleApi.ServiceControl.V1.Model.Attributes)
  field(:childSpanCount)
  field(:displayName, as: GoogleApi.ServiceControl.V1.Model.TruncatableString)
  field(:endTime, as: DateTime)
  field(:name)
  field(:parentSpanId)
  field(:sameProcessAsParentSpan)
  field(:spanId)
  field(:spanKind)
  field(:startTime, as: DateTime)
  field(:status, as: GoogleApi.ServiceControl.V1.Model.Status)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.TraceSpan do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.TraceSpan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.TraceSpan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
