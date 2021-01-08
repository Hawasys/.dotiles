#!/bin/bash

[[ -z $DRI_PRIME ]] && export DRI_PRIME=1 || [[ $DRI_PRIME -eq 0 ]] && export DRI_PRIME=1 || export DRI_PRIME=0 
