all: lib clean

APP_NAME = dsrc
LIB_NAME = libdsrc.a

INC_DIR = ../include/dsrc
AR_BIN = ar
AR_FLAGS = -cvq

APP_OBJS = DsrcOperator.o \
	DsrcWorker.o \
	DsrcIo.o \
	DsrcFile.o \
	BlockCompressor.o \
	DnaModelerHuffman.o \
	QualityPositionModeler.o \
	QualityRLEModeler.o \
	TagModeler.o \
	RecordsProcessor.o \
	FastqParser.o \
	FastqIo.o \
	FastqStream.o \
	FileStream.o \
	StdStream.o \
	huffman.o \
	DsrcModule.o

LIB_OBJS = DsrcArchive.o \
	RecordsBlockCompressor.o \
	FastqFile.o
#	DsrcModule.o

.cpp.o:
	$(CXX) $(CXXFLAGS) -c $< -o $@

lib: $(APP_OBJS) $(LIB_OBJS)
	ar $(AR_FLAGS) $(LIB_NAME) $(APP_OBJS) $(LIB_OBJS)

clean:
	-rm *.o
	-rm $(APP_NAME)
	-rm $(LIB_NAME)
