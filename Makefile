CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp
	g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)

example02: 02_validation_layers.cpp
	g++ $(CFLAGS) -o example02 02_validation_layers.cpp $(LDFLAGS)

example06: 06_swap_chain_creation.cpp
	g++ $(CFLAGS) -o example06 06_swap_chain_creation.cpp $(LDFLAGS)


.PHONY: test official clean

test: VulkanTest
	./VulkanTest

official: example02 example06
	./example02 ./example06

clean:
	rm -f VulkanTest example02 example06

