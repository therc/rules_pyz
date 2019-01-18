load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# WORKSPACE repository macro to load dependencies to use pyz_image
def pyz_rules_docker_repositories():
    excludes = native.existing_rules().keys()

    # rules_docker
    if "io_bazel_rules_docker" not in excludes:
        http_archive(
            name = "io_bazel_rules_docker",
            url = "https://github.com/bazelbuild/rules_docker/archive/8dbf18f327d7b5cf21db6fffd87204e0970cefc0.tar.gz",
            sha256="d505a62c52ffb12d92a89c3717a9d7259f9cffb343665a3e7f4eec275966fefc",
            strip_prefix="rules_docker-8dbf18f327d7b5cf21db6fffd87204e0970cefc0"
        )
