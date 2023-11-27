@echo off
set SOURCE="https://github.com/Trust-Anchor-Group/AgentApiYaml/blob/main/openapi.yaml?raw=true"
set JAR_FILE="openapi-generator-cli.jar"
set JAR_URL="https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/7.1.0/openapi-generator-cli-7.1.0.jar"
set OLD_URL="https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.50/swagger-codegen-cli-3.0.50.jar"

set OUTPUT_DIR="./sdk"
set LANG="csharp"

:: Check if swagger-codegen-cli.jar exists
if not exist "%JAR_FILE%" (
    echo swagger-codegen-cli.jar not found, downloading...
    PowerShell -Command "& { Invoke-WebRequest -Uri '%JAR_URL%' -OutFile '%JAR_FILE%' }"
)

:: Run Swagger Codegen
java -jar "%JAR_FILE%" generate -i %SOURCE% -g %LANG% -o "%OUTPUT_DIR%" -c ./config.json

:: Pause the script to view any messages
pause
