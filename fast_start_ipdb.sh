#!/bin/bash
# source venvs/env_ipdb/bin/activate

echo "exporting NETWORKAPI_PDB"
export NETWORKAPI_PDB=1
echo "exporting NETWORKAPI_DEBUG"
export NETWORKAPI_DEBUG=1
echo "cleaning up .pyc"
python manage.py clean_pyc --path /vagrant/CadVlan/
echo "starting runserver 0.0.0.0:8081 --ipdb"
python manage.py runserver 0.0.0.0:8081 --ipdb
