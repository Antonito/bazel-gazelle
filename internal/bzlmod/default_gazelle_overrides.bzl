# Copyright 2023 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

visibility("private")

DEFAULT_BUILD_FILE_GENERATION_BY_PATH = {
    "github.com/cncf/xds/go": "on",
    "github.com/envoyproxy/protoc-gen-validate": "on",
    "github.com/google/safetext": "on",
    "github.com/grpc-ecosystem/grpc-gateway/v2": "on",
    "google.golang.org/grpc": "on",
}

DEFAULT_DIRECTIVES_BY_PATH = {
    "github.com/argoproj/argo-workflows/v3": [
        "gazelle:proto disable",
    ],
    "github.com/argoproj/argo-events": [
        "gazelle:proto disable",
        "gazelle:go_naming_convention import_alias",
    ],
    "github.com/census-instrumentation/opencensus-proto": [
        "gazelle:proto disable",
    ],
    "github.com/envoyproxy/protoc-gen-validate": [
        "gazelle:build_file_name BUILD.bazel",
    ],
    "github.com/cockroachdb/errors": [
        "gazelle:proto disable",
    ],
    "github.com/colinmarc/hdfs/v2": [
        "gazelle:go_naming_convention import_alias",
        "gazelle:proto disable",
    ],
    "github.com/containerd/containerd": [
        "gazelle:proto disable",
    ],
    "github.com/containerd/containerd/api": [
        "gazelle:proto disable",
    ],
    "github.com/containerd/ttrpc": [
        "gazelle:proto disable",
    ],
    "github.com/gogo/googleapis": [
        "gazelle:proto disable",
    ],
    "github.com/gogo/protobuf": [
        "gazelle:proto disable",
    ],
    "github.com/google/cel-go": [
        "gazelle:go_naming_convention go_default_library",
    ],
    "github.com/google/gnostic": [
        "gazelle:proto disable",
    ],
    "github.com/google/gnostic-models": [
        "gazelle:proto disable",
    ],
    "github.com/google/go-jsonnet": [
        "gazelle:go_naming_convention go_default_library",
    ],
    "github.com/google/safetext": [
        "gazelle:build_file_name BUILD.bazel",
        "gazelle:build_file_proto_mode disable_global",
    ],
    "github.com/googleapis/gax-go/v2": [
        "gazelle:proto disable",
    ],
    "github.com/googleapis/gnostic": [
        "gazelle:proto disable",
    ],
    "github.com/grpc-ecosystem/grpc-gateway": [
        "gazelle:resolve go github.com/grpc-ecosystem/grpc-gateway/internal //internal:go_default_library",
        "gazelle:go_naming_convention import_alias",
        "gazelle:proto disable",
    ],
    "github.com/pseudomuto/protoc-gen-doc": [
        # The build file in github.com/mwitkow/go-proto-validators has both go_proto and gogo_proto targets, but the checked
        # in go files are generated by gogo proto. Resolving to the gogo proto target preserves the behavior of Go modules.
        "gazelle:resolve go github.com/mwitkow/go-proto-validators @com_github_mwitkow_go_proto_validators//:validators_gogo",
    ],
    "github.com/stackb/rules_proto": [
        "gazelle:go_naming_convention import",
    ],
    "google.golang.org/grpc": [
        "gazelle:proto disable",
    ],
    "google.golang.org/protobuf": [
        "gazelle:proto disable",
    ],
    "k8s.io/api": [
        "gazelle:proto disable",
    ],
    "k8s.io/apiextensions-apiserver": [
        "gazelle:proto disable",
    ],
    "k8s.io/apimachinery": [
        "gazelle:go_generate_proto false",
        "gazelle:proto_import_prefix k8s.io/apimachinery",
    ],
    "k8s.io/kubernetes": [
        "gazelle:proto disable",
    ],
    "k8s.io/metrics": [
        "gazelle:proto disable",
    ],
    "storj.io/common": [
        "gazelle:proto legacy",
    ],
    "storj.io/eventkit": [
        "gazelle:proto legacy",
    ],
    "storj.io/picobuf": [
        "gazelle:proto legacy",
    ],
}

DEFAULT_BUILD_EXTRA_ARGS_BY_PATH = {
    "github.com/census-instrumentation/opencensus-proto": [
        "-exclude=src",
    ],
    "github.com/cronokirby/saferith": [
        # This test file declares `package big` rather than `package saferith`.
        "-exclude=arith_s390x_test.go",
    ],
}
