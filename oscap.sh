#!/bin/bash

. demo-magic.sh
clear

pe "oscap info /usr/share/xml/scap/ssg/content/ssg-rhel7-xccdf.xml"

wait
clear



pe "oscap xccdf eval --profile stig-rhel7-disa --results /var/lib/insights/latest-compliance-report.xml /usr/share/xml/scap/ssg/content/ssg-rhel7-xccdf.xml"

