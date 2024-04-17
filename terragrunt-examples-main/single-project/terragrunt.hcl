terraform {
  source = "./terraform"
}

inputs = {
  env            = "dev"
  stacks         = split(",", run_cmd("python3", "-c", "import os; l=list(set([os.path.dirname(os.path.join(dp, f)).replace('../', '') for dp, _, fn in os.walk('../') for f in fn])); l.remove('..'); print(','.join([i for i in l if not '.terragrunt-cache' in i]))"))
  exclude_stacks = ["common", "core-locals", "gke/gke-cluster", "gke/gke-common", "secrets"]
}
