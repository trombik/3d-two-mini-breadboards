PYTHONPATH?=    /usr/local/FreeCAD/lib
PYTHON?=	python3

WRKSRC=	src
TARGETS=    two-mini-breadboards.stl two-mini-breadboards.png

two-mini-breadboards.stl:	${WRKSRC}/two-mini-breadboards.FCStd
	PYTHONPATH="${PYTHONPATH}" ${PYTHON} build.FCMacro

all: ${TARGETS}

clean:
	rm -f ${TARGETS} *.core
