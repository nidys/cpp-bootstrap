mkdir -p lib
mkdir test/include/
git clone https://github.com/google/googletest.git lib/googletest
lib/googletest/googlemock/scripts/fuse_gmock_files.py lib/googletest/googlemock/ test/include/
make -C lib/googletest/googlemock/make/

#g++ -g -Wall -Wextra -pthread gmock-all.o gtest-all.o gmock_main.o

