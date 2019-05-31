#!/usr/bin/env bash

source ./build.cfg
eval "echo \"$(cat ./pypirc.template)\"" > $HOME/.pypirc
$PYTHON_EXECUTABLE setup.py sdist bdist_wheel
twine upload dist/mendeley2-$PACKAGE_VERSION*