import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

@cocotb.test()
async def test_d2d_sha_wrapper(dut):
    dut._log.info("Starting D2D_SHA_Wrapper Test")
    
    clk = Clock(dut.clock, 10, units="ns")
    cocotb.start_soon(clk.start())


    dut._log.info("Applying Reset")
    dut.reset.value = 0
    await ClockCycles(dut.clock, 50)
    dut.reset.value = 1
    await ClockCycles(dut.clock, 50)

    test_input = 0x123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF
    dut.d2d_data_in.value = test_input
    dut.d2d_valid.value = 1
    dut._log.info(f"Testing input: {hex(test_input)}")

   
    dut.d2d_data_out.value = 0
    dut._log.info("d2d_data_out initialized to 0")

 
    await ClockCycles(dut.clock, 1)

    
    for _ in range(5):
        await ClockCycles(dut.clock, 200)
      

        if dut.d2d_ready.value == 1:
            break


    assert dut.d2d_ready.value == 1, "Timeout: d2d_ready never asserted"
    assert dut.d2d_data_out.value != "x", "Output data should not be undefined"
   

