// See LICENSE.txt for license details.
package examples

import chisel3._

class comb extends Module {
  val io = IO(new Bundle {
    val x   = Input(UInt(16.W))
    val y   = Input(UInt(16.W))
    val addsub = Input(Bool())
    val z   = Output(UInt(16.W))
    	
  })

	when (io.addsub) {
    io.z := io.x + io.y
  }  .otherwise {
    io.z := io.x - io.y
    }
 
}
