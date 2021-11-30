#!/bin/bash
python_versions="py37 py38 py39 py310"
GREEN='\033[0;32m'
NC='\033[0m'

for python_version in $python_versions; do
    echo -e "${GREEN}Building wheel for Python version [${python_version}]${NC}"
    python3 setup.py bdist_wheel --python-tag ${python_version} clean --all
    echo -e "${GREEN}Done building wheel for Python version [${python_version}]${NC}"
    sleep 2
done
