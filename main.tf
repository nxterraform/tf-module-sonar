resource "helm_release" "sonar" {
  name  = "sonarqube-nx"
  chart = "sonarqube"
  namespace = var.namespace
  repository = data.helm_repository.loki.url
  create_namespace = true
  atomic = true


}