BUNDLE:=noise.lv2

CXX ?= g++
PREFIX ?= /usr/local

FAUSTFLAGS:=-scal -exp10
CFLAGS:=-DURI_PREFIX=\"https://github.com/jkbd\"

$(BUNDLE): $(BUNDLE)/manifest.ttl $(BUNDLE)/noise.ttl $(BUNDLE)/noise.so

$(BUNDLE)/%.so: %.cpp
	$(CXX) -shared -fPIC -DPIC $(CFLAGS) $< -o $@

%.cpp: %.dsp
	faust -i -a lv2.cpp -cn noise $(FAUSTFLAGS) $< -o $@

install:
	cp -r $(BUNDLE) $(DESTDIR)$(PREFIX)/lib/lv2/

.PHONY: clean
clean:
	rm -f noise.cpp
	rm -f $(BUNDLE)/*.so
	rm -f $(BUNDLE)/*.cpp
