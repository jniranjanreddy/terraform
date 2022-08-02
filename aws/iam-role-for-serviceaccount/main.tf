module "irsa" {
  source  = "Young-ook/eks/aws//modules/iam-role-for-serviceaccount"

  namespace      = "default"
  serviceaccount = "iam-test"
  oidc_url       = module.eks.oidc.url
  oidc_arn       = module.eks.oidc.arn
  policy_arns    = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
#  tags           = { "env" = "test" }
}
