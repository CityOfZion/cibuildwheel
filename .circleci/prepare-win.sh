set -o errexit
set -o xtrace

$PYTHON --version
$PYTHON -m pip --version
$PYTHON -m pip install -q --user --ignore-installed --upgrade virtualenv
$PYTHON -m virtualenv -p $PYTHON venv
venv/Scripts/python -m pip install -r requirements-dev.txt
venv/Scripts/python -m pip freeze
venv/Scripts/python --version
