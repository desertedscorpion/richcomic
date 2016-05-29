#!/bin/bash

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD) &&
    while ! git push origin "${CURRENT_BRANCH}"
    do
        sleep 1s &&
            true
    done &&
    true