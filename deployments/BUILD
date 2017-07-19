package(default_visibility = ["//visibility:public"])

load(
  "@io_bazel_rules_k8s//k8s:k8s.bzl",
  "k8s_deploy",
)

k8s_deploy(
  name = "dev",
  template = ":hello-universe.yaml.tpl",
  substitutions = {
      "environment": "{BUILD_USER}",
  },
  images = {
    "gcr.io/convoy-adapter/hello-universe:{BUILD_USER}": "//:image"
  },
)

k8s_deploy(
  name = "prod",
  template = ":hello-universe.yaml.tpl",
  substitutions = {
      "environment": "1.0.0",
  },
)