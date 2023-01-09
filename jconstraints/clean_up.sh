#!/bin/bash
pushd jconstraints-abc
./gradlew clean
popd
pushd jconstraints-z3str4
./gradlew clean
popd
pushd jconstraints-princess
./gradlew clean
popd
pushd jconstraints-ostrich
./gradlew clean
popd
pushd jconstraints
./gradlew clean
popd
