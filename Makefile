PACKAGES = assimp

TOP = $(shell pwd)
USR = $(TOP)/usr

all: $(patsubst %,build-%,$(PACKAGES))

build-assimp:
	cd assimp && \
	cmake -D BUILD_ASSIMP_SAMPLES=OFF -D BUILD_ASSIMP_TOOLS=OFF -D ENABLE_BOOST_WORKAROUND=ON -D CMAKE_INSTALL_PREFIX=$(USR) . && \
	$(MAKE) && \
	$(MAKE) install