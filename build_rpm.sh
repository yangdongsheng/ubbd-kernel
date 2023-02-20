#!/bin/bash

set -e

version=`cat VERSION`

make dist
cp ubbd-kernel-${version}.tar.gz ~/rpmbuild/SOURCES/
cp rpm/ubbd-kernel.spec ~/rpmbuild/SPECS/
rpmbuild -ba ~/rpmbuild/SPECS/ubbd-kernel.spec
