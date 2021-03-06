#!/bin/bash
mkdir build
cd build

cmake .. \
      -GNinja \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DMATH_LIBRARY_BACKEND=$backend_name_in_build \
      -DBUILD_EXAMPLE=OFF \
      -DMODULE_ACTUATORS=ON \
      -DMODULE_MUSCLES=ON \
      -DBINDER_PYTHON3=ON \
        -DPython3_EXECUTABLE=$PREFIX/bin/python \
      -DBINDER_MATLAB=OFF

ninja install
