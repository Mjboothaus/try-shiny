default:
    @just --list

# Export the Python project requirements from pyproject.toml to requirements.txt
reqs:
    pdm export --o requirements.txt --without-hashes --prod

# App

# Run the default Shiny app
app app_name:
    shiny run {{app_name}}