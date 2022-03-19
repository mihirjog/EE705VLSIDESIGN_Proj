package examples

import chisel3._
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class dff extends Module {
  val io = IO(new Bundle {
    val in  = Input(UInt(1.W))
    val out = Output(UInt(1.W))
  })

  //val r0 = RegNext(io.in)  
 // val r1 = RegNext(r0)
  io.out := RegNext(io.in)
}

class dffTests(c: dff) extends PeekPokeTester(c) {
  val reg = Array.fill(1){ 0 }
  for (t <- 0 until 64) {
    val in = rnd.nextInt(2)
    poke(c.io.in, in)
    step(1)
reg(0) = in
     expect(c.io.out, reg(0))
	
  }
}

class dffTester extends ChiselFlatSpec {
  behavior of "dff"
  backends foreach {backend =>
    it should s"pass the value when clock comes $backend" in {
      Driver(() => new dff, backend)((c) => new dffTests(c)) should be (true)
    }
  }
}

