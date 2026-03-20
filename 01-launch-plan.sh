#!/bin/bash
# 01-launch-plan.sh
# Run the plan to do something
set -euo pipefail

bolt plan run the_bolt_project_lab::example_plan --targets group_01 --params @params.json

