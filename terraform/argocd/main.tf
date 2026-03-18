# terraform/argocd/main.tf

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "8.5.10"
  namespace        = "infra-tools"
  create_namespace = true

  timeout          = 1800  # Даємо 30 хвилин 
  wait             = true # Чекаємо, поки поди стануть Ready
  force_update     = true # Змушуємо оновлювати, навіть якщо статус failed

  values = [
    file("${path.module}/values/argocd-values.yaml")
  ]
}
