resource "aws_cloudfront_origin_request_policy" "dbx_example_origin_policy" {
  name    = "databricks-example-origin-policy"
  comment = "Policy for Stable URL on Databricks"
  cookies_config {
    cookie_behavior = "all"
  }
  headers_config {
    header_behavior = "allExcept"
    headers {
      items = ["host"]
    }
  }
  query_strings_config {
    query_string_behavior = "all"
  }
}