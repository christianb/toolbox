#!/bin/bash

# Executes one instrumentation test class

# First argument is the module
MODULE=$1

# Second argument is the full.package.classname
CLASS=$2

./gradlew ${MODULE}:connectedDebugAndroidTest -Pandroid.testInstrumentationRunnerArguments.class=${CLASS}
