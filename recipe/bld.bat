mkdir build
cd build

cmake ../^
    -GNinja ^
    -DCMAKE_BUILD_TYPE=Release^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%"^
    -DMATH_LIBRARY_BACKEND="%backend_name_in_build%"^
    -DBUILD_SHARED_LIBS=OFF^
  	-DBUILD_EXAMPLE=OFF^
    -DMODULE_ACTUATORS=ON^
    -DMODULE_MUSCLES=ON^
    -DBINDER_PYTHON3=ON^
      -DPython3_EXECUTABLE="%PREFIX%/python.exe"^
   	-DBINDER_MATLAB=OFF


ninja install
