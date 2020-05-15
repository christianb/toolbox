#!/bin/bash

# Runs alls needed checks

./gradlew clean detekt testDebugUnit cAT lintDebug
