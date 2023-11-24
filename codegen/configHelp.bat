set JAR_URL="https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/7.1.0/openapi-generator-cli-7.1.0.jar"
set JAR_FILE="openapi-generator-cli.jar"

set LANG="csharp"

:: Check if swagger-codegen-cli.jar exists
if not exist "%JAR_FILE%" (
    echo swagger-codegen-cli.jar not found, downloading...
    PowerShell -Command "& { Invoke-WebRequest -Uri '%JAR_URL%' -OutFile '%JAR_FILE%' }"
)

:: Run Swagger Codegen
java -jar "%JAR_FILE%" config-help -g %LANG%

pause