// See LICENSE.txt for license details.
package examples

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class combTests(c: comb) extends PeekPokeTester(c) {
  val maxInt = 1 << 16
  
    
    poke(c.io.x, 34)
    poke(c.io.y, 28)
    poke(c.io.addsub, 0)	
    //expect(c.io.z, (34 - 28)&(maxInt-1))
    expect(c.io.z, (34 - 28))


     
    
    poke(c.io.x, 34)
    poke(c.io.y, 28)
    poke(c.io.addsub, 1)	
    //expect(c.io.z, (34+ 28)&(maxInt-1))	
    expect(c.io.z, (34 + 28))	
  
}

class comblTester extends ChiselFlatSpec {
  behavior of "Combinational"
  backends foreach {backend =>
    it should s"correctly add randomly generated numbers in $backend" in {
      Driver(() => new comb, backend)(c => new combTests(c)) should be (true)
    }
  }
}

