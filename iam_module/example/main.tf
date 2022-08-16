module "iam_user" {
  source = "../iam_users"
  iam_users = ["rahul","sarang","harsh","yash"]
  instance_bool = true
}

module "backend" {
  source = "../../"
}


module "my-buck" {
  source = "../s3_bucket"
  for_each = var.buck_loop
  bucket_name = each.value
}