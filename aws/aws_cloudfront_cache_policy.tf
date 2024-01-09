resource "aws_cloudfront_cache_policy" "dbx_example_cache_policy" {
  comment     = "Databricks Example Caching Policy"
  default_ttl = "0"
  max_ttl     = "0"
  min_ttl     = "0"
  name        = "databricks-example-cache-policy"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "false"
    enable_accept_encoding_gzip   = "false"

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}