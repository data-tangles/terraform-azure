#Resource Group
tag_environment = "Dev"
rg_name = "#{APP_SERVICE_RG_NAME}#"
rg_location = "#{APP_SERVICE_RG_LOCATION}#"

#App Service Plan
app_service_plan_name = "#{APP_SERVICE_PLAN_NAME}#"

#Web App
web_app_name = "#{APP_SERVICE_WEB_APP_NAME}#"
allowed_ip_address = "#{APP_SERVICE_ALLOWED_IP_ADDRESS}#"
docker_image_name = "ottoopensource/gitactionboard:latest"
docker_registry_url = "https://index.docker.io"
docker_registry_username = null
docker_registry_password = null