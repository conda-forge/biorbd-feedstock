mkdir build_casadi
cd build_casadi

cmake ../^
    -GNinja ^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%"^
    -DCMAKE_BUILD_TYPE=Release^
    -DMATH_LIBRARY_BACKEND="Casadi"^
  	-DBUILD_EXAMPLE=OFF^
    -DBINDER_PYTHON3=ON^
      -DPYTHON_EXECUTABLE="%PREFIX%/python.exe"
ninja install


cd ..
mkdir build_eigen
cd build_eigen

cmake ../^
    -GNinja ^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%"^
    -DCMAKE_BUILD_TYPE=Release^
    -DMATH_LIBRARY_BACKEND="Eigen3"^
  	-DBUILD_EXAMPLE=OFF^
    -DBINDER_PYTHON3=ON^
      -DPYTHON_EXECUTABLE="%PREFIX%/python.exe"
ninja install
