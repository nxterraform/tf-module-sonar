resource "helm_release" "sonar" {
  name  = "sonarqube-nx"
  chart = "sonarqube"
  namespace = var.namespace
  # repository = data.helm_repository.sonar.url
  repository = "https://oteemo.github.io/charts"
  create_namespace = true
  atomic = true
  
  values = [
    file("${path.module}/values.yaml")
  ]

}
