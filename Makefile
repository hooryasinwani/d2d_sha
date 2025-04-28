SIM ?= icarus
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES = $(PWD)/D2DAdapter.v $(PWD)/sha2_single.v $(PWD)/D2D_SHA_Wrapper.v

TOPLEVEL = D2D_SHA_Wrapper
MODULE = test_d2d_sha

include $(shell cocotb-config --makefiles)/Makefile.sim
