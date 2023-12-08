module "aws_prod" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "prod-key"
  sg_name = "grupo-prod"
}

output "IP" {
  value = module.aws_prod.ip_publico
}
