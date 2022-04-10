import csv
import math

def twos_comp(val, bits):
    """compute the 2's complement of int value val"""
    if (val & (1 << (bits - 1))) != 0: # if sign bit is set e.g., 8bit: 128-255
        val = val - (1 << bits)        # compute negative value
    return val

def float2bin(my_number):
   a, b = str(my_number).split(".")
   my_int = int(a)
   my_fra = float("0." + b)
   
   res = bin(my_int).replace("0b", "").zfill(4)
   
   d = my_fra
   
   for x in range(12):
       c, d = str(d*2).split(".")
       d    = float("0." + d)
       res += c
   return res

with open('large2.csv','w') as f1:
	writer=csv.writer(f1,lineterminator='\n',)
	for i in range(0,65536) :
		a = bin(i).replace("0b", "").zfill(16)
		b = bin(twos_comp(int(a,2), len(a))).replace("-", "").replace("0b", "").zfill(16)

		print("a = "+a)
		print("b = "+b)

		if a[0] == '0':
			c = float(int(b[0])*8 + int(b[1])*4 + int(b[2])*2 + int(b[3]) + int(b[4])*pow(2,-1) + int(b[5])*pow(2,-2) + int(b[6])*pow(2,-3) + int(b[7])*pow(2,-4) + int(b[8])*pow(2,-5) + int(b[9])*pow(2,-6) + int(b[10])*pow(2,-7) + int(b[11])*pow(2,-8) + int(b[12])*pow(2,-9) + int(b[13])*pow(2,-10) + int(b[14])*pow(2,-11) + int(b[15])*pow(2,-12))
		else:
			c = float("-" + str(int(b[0])*8 + int(b[1])*4 + int(b[2])*2 + int(b[3]) + int(b[4])*pow(2,-1) + int(b[5])*pow(2,-2) + int(b[6])*pow(2,-3) + int(b[7])*pow(2,-4) + int(b[8])*pow(2,-5) + int(b[9])*pow(2,-6) + int(b[10])*pow(2,-7) + int(b[11])*pow(2,-8) + int(b[12])*pow(2,-9) + int(b[13])*pow(2,-10) + int(b[14])*pow(2,-11) + int(b[15])*pow(2,-12)))

		print("c = "+str(c))

		s = 1/(1+math.exp(-c))
		print("s = "+str(s))

		o = float2bin(s)
		print("o = "+str(o))
		print("\n")
		writer.writerow([str(o)])
