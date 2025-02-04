locals {
  relative_path = get_path_from_repo_root()
}

inputs = {
  test_path = local.relative_path
}

terraform {
  source = "./terraform"
}
