CXXFLAGS = /c /EHsc
OUT = square.exe

all: $(OUT)

$(OUT): main.obj compute.obj
    link main.obj compute.obj /out:$(OUT)

compute.obj: compute.cpp compute.h
    cl $(CXXFLAGS) compute.cpp

main.obj: main.cpp
    cl $(CXXFLAGS) main.cpp