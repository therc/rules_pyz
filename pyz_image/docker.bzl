load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# WORKSPACE repository macro to load dependencies to use pyz_image
def pyz_rules_docker_repositories():
    excludes = native.existing_rules().keys()

    # rules_docker
    if "io_bazel_rules_docker" not in excludes:
        http_archive(
            name = "io_bazel_rules_docker",
            sha256 = "aed1c249d4ec8f703edddf35cbe9dfaca0b5f5ea6e4cd9e83e99f3b0d1136c3d",
            strip_prefix = "rules_docker-0.7.0",
            urls = ["https://github.com/bazelbuild/rules_docker/archive/v0.7.0.tar.gz"],
        )
