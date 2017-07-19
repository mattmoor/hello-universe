git_repository(
    name = "io_bazel_rules_go",
    remote = "https://github.com/bazelbuild/rules_go.git",
    tag = "0.5.2",
)
load("@io_bazel_rules_go//go:def.bzl", "go_repositories", "go_repository")

go_repositories()

go_repository(
    name = "com_github_kelseyhightower_kargo",
    importpath = "github.com/kelseyhightower/kargo",
    commit = "c4eed5e04f3718ed7eacd64fbee6bbc8161b3e00",
)

go_repository(
    name = "org_golang_google_api",
    importpath = "google.golang.org/api",
    commit = "bc20c61134e1d25265dd60049f5735381e79b631",
)

go_repository(
    name = "org_golang_x_net",
    importpath = "golang.org/x/net",
    commit = "f01ecb60fe3835d80d9a0b7b2bf24b228c89260e",
)

go_repository(
    name = "org_golang_x_oauth2",
    importpath = "golang.org/x/oauth2",
    commit = "b9780ec78894ab900c062d58ee3076cd9b2a4501",
)

go_repository(
    name = "com_google_cloud_go",
    importpath = "cloud.google.com/go",
    commit = "1ed2f0abb2869a51b3a5b9daec801bf9791f95d0",
)

go_repository(
    name = "com_github_googleapis_gax_go",
    importpath = "github.com/googleapis/gax-go",
    commit = "da06d194a00e19ce00d9011a13931c3f6f6887c7",
)

go_repository(
    name = "org_golang_google_grpc",
    importpath = "google.golang.org/grpc",
    commit = "27b2052c9524abc45ae991d6a402ddb91f06ba03",
)

go_repository(
    name = "com_github_golang_protobuf",
    importpath = "github.com/golang/protobuf",
    commit = "0a4f71a498b7c4812f64969510bcb4eca251e33a",
)

go_repository(
    name = "org_golang_google_genproto",
    importpath = "google.golang.org/genproto",
    commit = "b0a3dcfcd1a9bd48e63634bd8802960804cf8315",
)

go_repository(
    name = "org_golang_x_text",
    importpath = "golang.org/x/text",
    commit = "cfdf022e86b4ecfb646e1efbd7db175dd623a8fa",
)

git_repository(
    name = "io_bazel_rules_docker",
    remote = "https://github.com/mattmoor/rules_docker.git",
    commit = "5ee8f1b66309d6c59762900cf0b8b1b88224ecaf",
)

load(
  "@io_bazel_rules_docker//docker:docker.bzl",
  "docker_repositories", "docker_pull",
)
docker_repositories()

# I have useful things like glibc and ca-certs.
docker_pull(
    name = "base",
    registry = "gcr.io",
    repository = "distroless/base",
    digest = "sha256:06fcd3edcfeefe13b82fa8bdb9e3f4fa3bf4c7e8fe997bee0230e392f77d0e04",
)

git_repository(
    name = "io_bazel_rules_k8s",
    remote = "https://github.com/mattmoor/rules_k8s.git",
    commit = "a3e68dae77514bb96347bfd002560639c10f547e",
)

load(
  "@io_bazel_rules_k8s//k8s:k8s.bzl",
  "k8s_repositories",
)
k8s_repositories()
