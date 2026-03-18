# --- Команди для ArgoCD ---

output "argocd_admin_password_command" {
  description = "Команда для отримання пароля адміністратора ArgoCD"
  value       = "kubectl -n infra-tools get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d"
}

output "argocd_port_forward_command" {
  description = "Команда для доступу до ArgoCD UI (https://localhost:8080)"
  value       = "kubectl port-forward svc/argocd-server -n infra-tools 8080:443"
}

# --- Команди для MLflow ---

output "mlflow_port_forward_command" {
  description = "Команда для доступу до MLflow UI (http://localhost:5000)"
  # Ми використовуємо назву сервісу 'mlflow', як у твоїх маніфестах, та неймспейс 'mlflow-app'
  value       = "kubectl port-forward svc/mlflow -n mlflow-app 5000:80"
}

output "mlflow_url" {
  description = "Адреса MLflow після виконання port-forward"
  value       = "http://localhost:5000"
}

# --- Команда для перевірки статусів ---

output "check_pods_command" {
  description = "Команда для перевірки всіх подів у кластері"
  value       = "kubectl get pods -A"
}
