resource "aws_cloudfront_distribution" "dbx_example_distribution" {
  comment = "Distribution for Stable Databricks URL"

  default_cache_behavior {
    allowed_methods          = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id          = "${aws_cloudfront_cache_policy.dbx_example_cache_policy.id}"
    cached_methods           = ["GET", "HEAD"]
    compress                 = "true"
    default_ttl              = "0"
    max_ttl                  = "0"
    min_ttl                  = "0"
    origin_request_policy_id = "${aws_cloudfront_origin_request_policy.dbx_example_origin_policy.id}"
    smooth_streaming         = "false"
    target_origin_id         = var.workspace_url
    viewer_protocol_policy   = "allow-all"
  }

  enabled         = "true"
  http_version    = "http2"
  is_ipv6_enabled = "false"

  ordered_cache_behavior {
    allowed_methods = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id = "${aws_cloudfront_cache_policy.dbx_example_cache_policy.id}"
    cached_methods  = ["GET", "HEAD"]
    compress        = "true"
    default_ttl     = "0"

    function_association {
      event_type   = "viewer-request"
      function_arn = "${aws_cloudfront_function.dbx_example_function.arn}"
    }

    max_ttl                  = "0"
    min_ttl                  = "0"
    origin_request_policy_id = "${aws_cloudfront_origin_request_policy.dbx_example_origin_policy.id}"
    path_pattern             = "/warehouse"
    smooth_streaming         = "false"
    target_origin_id         = var.workspace_url
    viewer_protocol_policy   = "allow-all"
  }

  origin {
    connection_attempts = "3"
    connection_timeout  = "10"

    custom_origin_config {
      http_port                = "80"
      https_port               = "443"
      origin_keepalive_timeout = "5"
      origin_protocol_policy   = "match-viewer"
      origin_read_timeout      = "30"
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name = var.workspace_url
    origin_id   = var.workspace_url
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  retain_on_delete = "false"
  staging          = "false"

  viewer_certificate {
    cloudfront_default_certificate = "true"
    minimum_protocol_version       = "TLSv1"
  }
}
