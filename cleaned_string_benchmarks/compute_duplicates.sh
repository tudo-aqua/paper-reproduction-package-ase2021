#!/bin/bash

java -Xmx64g -Xss1g -cp jconstraints-runner-0.9.6-SNAPSHOT-all.jar structuralEquivalence.StructuralEquivalenceCheck -smt $1 > $1.analysis
