#!/bin/bash
SE_PATH=/home/nettrom/src/CAT-measurements-2020
PYTHON_HOME=/home/nettrom/venv/bin

cd $SE_PATH
{
  date

  echo "Refreshing Computer-Aided Tagging report"
  $PYTHON_HOME/jupyter nbconvert --ExecutePreprocessor.timeout=1800 --execute --to html CAT-usage-report.ipynb
  cp CAT-usage-report.html /srv/published/notebooks/computer-aided-tagging

} >> $SE_PATH/notebook_update.log 2>&1