resource "aws_apprunner_connection" "example" {
  connection_name = "example"
  provider_type   = "GITHUB"
}

resource "aws_apprunner_service" "example" {
  service_name = "example"

  source_configuration {
    authentication_configuration {
      connection_arn = aws_apprunner_connection.example.arn
    }
    code_repository {
      code_configuration {
        # App Runner reads configuration values from the apprunner.yaml file in the source code repository 
        configuration_source = "REPOSITORY"
      }
      repository_url = var.repository_url
      source_code_version {
        type  = "BRANCH"
        value = var.branch
      }
    }
  }
  network_configuration {
    ingress_configuration {
      is_publicly_accessible = true
    }
    egress_configuration {
      egress_type       = "DEFAULT"
    }
  }
}