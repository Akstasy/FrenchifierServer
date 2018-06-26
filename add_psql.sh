#!/bin/bash

sudo -u postgres createuser -s pguser
sudo -u postgres psql -c "ALTER USER pguser PASSWORD 'pguser';"
