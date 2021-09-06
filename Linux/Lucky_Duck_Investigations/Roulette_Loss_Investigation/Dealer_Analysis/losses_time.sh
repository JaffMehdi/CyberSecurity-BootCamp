#!/bin/bash
grep -i $1 losses_times | awk '{print $2" "$3}' > $1_losstimes
