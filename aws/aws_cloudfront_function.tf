resource "aws_cloudfront_function" "dbx_example_function" {
  name    = "databricks_warehouse_function"
  runtime = "cloudfront-js-2.0"
  comment = "Update a URL to add the warehouse info."
  publish = true
  code    = file("${path.module}/databricks_warehouse_function.js")
}