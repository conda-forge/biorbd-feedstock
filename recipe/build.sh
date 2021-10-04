#!/bin/bash

# Build casadi
mkdir build_casadi
cd build_casadi

cmake . .. \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DMATH_LIBRARY_BACKEND="Casadi" \
      -DBUILD_EXAMPLE=OFF \
      -DMODULE_ACTUATORS=ON \
      -DMODULE_MUSCLES=ON \
      -DBINDER_PYTHON3=ON \
      -DBINDER_MATLAB=OFF

make install -j$CPU_COUNT

cd ..

# Build Eigen
mkdir build_eigen
cd build_eigen

cmake . .. \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DMATH_LIBRARY_BACKEND=$"Eigen3" \
      -DBUILD_EXAMPLE=OFF \
      -DMODULE_ACTUATORS=ON \
      -DMODULE_MUSCLES=ON \
      -DBINDER_PYTHON3=ON \
      -DBINDER_MATLAB=OFF

make install -j$CPU_COUNT
