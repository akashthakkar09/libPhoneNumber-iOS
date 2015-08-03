#!/bin/sh

xctool -project libPhoneNumber.xcodeproj -scheme libPhoneNumber clean build -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO

xctool -project libPhoneNumber.xcodeproj -scheme libPhoneNumber -sdk iphonesimulator clean build test ONLY_ACTIVE_ARCH=NO TEST_AFTER_BUILD=YES GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES GCC_GENERATE_TEST_COVERAGE_FILES=YES 
