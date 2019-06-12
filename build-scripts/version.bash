#!/bin/bash
grep -i "version" < Dockerfile | grep -oP "\\d+(.\\d+)*(-SNAPSHOT)?" > version