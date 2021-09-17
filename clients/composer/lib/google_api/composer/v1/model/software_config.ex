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

defmodule GoogleApi.Composer.V1.Model.SoftwareConfig do
  @moduledoc """
  Specifies the selection and configuration of software inside the environment.

  ## Attributes

  *   `airflowConfigOverrides` (*type:* `map()`, *default:* `nil`) - Optional. Apache Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example "core-dags_are_paused_at_creation". Section names must not contain hyphens ("-"), opening square brackets ("["), or closing square brackets ("]"). The property name must not be empty and must not contain an equals sign ("=") or semicolon (";"). Section and property names must not contain a period ("."). Apache Airflow configuration property names must be written in [snake_case](https://en.wikipedia.org/wiki/Snake_case). Property values can contain any character, and can be written in any lower/upper case format. Certain Apache Airflow configuration property values are [blocked](/composer/docs/concepts/airflow-configurations), and cannot be overridden.
  *   `envVariables` (*type:* `map()`, *default:* `nil`) - Optional. Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes. Environment variable names must match the regular expression `a-zA-Z_*`. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression `AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+`), and they cannot match any of the following reserved names: * `AIRFLOW_HOME` * `C_FORCE_ROOT` * `CONTAINER_NAME` * `DAGS_FOLDER` * `GCP_PROJECT` * `GCS_BUCKET` * `GKE_CLUSTER_NAME` * `SQL_DATABASE` * `SQL_INSTANCE` * `SQL_PASSWORD` * `SQL_PROJECT` * `SQL_REGION` * `SQL_USER`
  *   `imageVersion` (*type:* `String.t`, *default:* `nil`) - The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression `composer-([0-9]+\\.[0-9]+\\.[0-9]+|latest)-airflow-[0-9]+\\.[0-9]+(\\.[0-9]+.*)?`. When used as input, the server also checks if the provided version is supported and denies the request for an unsupported version. The Cloud Composer portion of the version is a [semantic version](https://semver.org) or `latest`. When the patch version is omitted, the current Cloud Composer patch version is selected. When `latest` is provided instead of an explicit version number, the server replaces `latest` with the current Cloud Composer version and stores that version number in the same field. The portion of the image version that follows *airflow-* is an official Apache Airflow repository [release name](https://github.com/apache/incubator-airflow/releases). See also [Version List](/composer/docs/concepts/versioning/composer-versions).
  *   `pypiPackages` (*type:* `map()`, *default:* `nil`) - Optional. Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name such as "numpy" and values are the lowercase extras and version specifier such as "==1.12.0", "[devel,gcp_api]", or "[devel]>=1.8.2, <1.9.2". To specify a package without pinning it to a version specifier, use the empty string as the value.
  *   `pythonVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The major version of Python used to run the Apache Airflow scheduler, worker, and webserver processes. Can be set to '2' or '3'. If not specified, the default is '3'. Cannot be updated.
  *   `schedulerCount` (*type:* `integer()`, *default:* `nil`) - Optional. The number of schedulers for Airflow. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-2.*.*.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :airflowConfigOverrides => map() | nil,
          :envVariables => map() | nil,
          :imageVersion => String.t() | nil,
          :pypiPackages => map() | nil,
          :pythonVersion => String.t() | nil,
          :schedulerCount => integer() | nil
        }

  field(:airflowConfigOverrides, type: :map)
  field(:envVariables, type: :map)
  field(:imageVersion)
  field(:pypiPackages, type: :map)
  field(:pythonVersion)
  field(:schedulerCount)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.SoftwareConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.SoftwareConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.SoftwareConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
