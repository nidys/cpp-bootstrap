if [ ! -f test/include/ ]; then
      mkdir -p lib
      mkdir test/include/
      echo '## cloning gmock repo'
      git clone https://github.com/google/googletest.git lib/googletest
      echo '## copying necessary files'
      lib/googletest/googlemock/scripts/fuse_gmock_files.py lib/googletest/googlemock/ test/include/
      echo '## making gmock lib'
      make -C lib/googletest/googlemock/make/
      echo '## test setup done'
fi

#g++ -g -Wall -Wextra -pthread gmock-all.o gtest-all.o gmock_main.o

