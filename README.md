# LiteX FPU demo
## Build commands:
```
rm -Rf build && litex_sim --cpu-type femtorv --cpu-variant petitbateau
rm -Rf demo
/demo.py --build-path=build/sim --mem rom
litex_sim --cpu-type femtorv --cpu-variant petitbateau --rom-init demo.bin 
```
## Expected output:

![image](https://user-images.githubusercontent.com/8551129/217586467-fb250d02-fd39-4a59-b1d2-d1231bce6807.png)


## Dissasembly of test function
Those are on the [output](https://github.com/suarezvictor/litex_fpu_test/tree/main/output) directory, 
generated with `riscv64-unknown-elf-objdump -D demo/demo.elf`  
Only difference betweem them is that FemtoRV uses _fsw_ instruction where vexriscv_smp and naxriscv, _fsd_ (since architecture for femtorv lacks the 'd').

## Vexriscv test
```
rm -Rf build && litex_sim.py --cpu-type vexriscv_smp --with-fpu --with-wishbone-memory
rm -Rf demo
./demo.py --build-path=build/sim --mem rom
python3 litex_sim.py --rom-init demo.bin --cpu-type vexriscv_smp --with-fpu --with-wishbone-memory
```

## Naxriscv test
Prerequisites: pythondata-cpu-naxriscv module installed  
`pip install --user git+https://github.com/litex-hub/pythondata-cpu-naxriscv.git`

```
rm -Rf build && python3 ../litex/litex/tools/litex_sim.py --cpu-type naxriscv --xlen 32 --with-fpu
rm -Rf demo
./demo.py --build-path=build/sim --mem rom
python3 ../litex/litex/tools/litex_sim.py --rom-init demo.bin --cpu-type naxriscv --xlen 32 --with-fpu
```

If regenerating the CPU, you may need to delete already generated files:  
```MDIR=`python -c "import pythondata_cpu_naxriscv as m, os; print(os.path.dirname(m.__file__))"` && rm $MDIR/verilog/NaxRiscvLitex_*```
