#!/bin/bash
cd jconstraints
git checkout ase_journal
git rev-parse --short HEAD > jconstraints-build-commit.txt
cd jconstraints-core
../gradlew publishToMavenLocal
cd ../..
cd jconstraints-abc
./gradlew publishToMavenLocal
cd -
cd jconstraints-z3str4
./gradlew publishToMavenLocal
cd -
cd jconstraints-princess
./gradlew publishToMavenLocal
cd -
cd jconstraints-ostrich
./gradlew publishToMavenLocal
cd -
cd jconstraints
./gradlew fatJar
