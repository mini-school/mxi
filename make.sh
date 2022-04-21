#!/bin/sh
#------------------------------------------------------------------------------
# written by:   mcdaniel
#               https://lawrencemcdaniel.com
#
# date:         mar-2022
#
# usage:        Re-runs the Cookiecutter for this repository.
#------------------------------------------------------------------------------

GITHUB_REPO="gh:lpm0073/cookiecutter-openedx-devops"
GITHUB_BRANCH="main"
OUTPUT_FOLDER="../"

cookiecutter --checkout $GITHUB_BRANCH \
             --output-dir $OUTPUT_FOLDER \
             --overwrite-if-exists \
             --no-input \
             $GITHUB_REPO \
             global_platform_name=minischool \
             global_platform_region=mumbai \
             global_aws_region=ap-south-1 \
             global_account_id=255290222663 \
             global_root_domain=minischool.co.in \
             global_aws_route53_hosted_zone_id=Z0135246YPNCZW2WATG5 \
             environment_name=prod \
             environment_subdomain=courses
