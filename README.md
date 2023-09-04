
# True Single-Phase Clock (TSPC): The Design of CMOS True Single-Phase Clock Dividers

**True Single-Phase Clock (TSPC) showcases the ability to achieve high-performance frequency divider**

This program is operated by HSPICE using [90nm PTM](http://rfic.eecs.berkeley.edu/~niknejad/ee242/pdf/90nm_bulk.pm) technology at 1V power supply. It combines various members of the CMOS TSPC logic gates family, achieving a maximum operating frequency of 25GHz with a power consumption of 7.432mW.

![image](https://github.com/QBlobster/true-single-phase-clock/blob/main/TSPC.png)

For the first DFF, I enhanced its operating speed by using ratioed logic structures (𝑃𝐶 − 𝑃𝑁 − 𝑁𝐶) and sizing the second stage with a high ratio to minimize propagation delay. The width of the first and third stages will be determined based on the size of the 𝑃𝑁 logic. For the others, I used ratio-less logic (𝑃𝐶 − 𝐶𝑁 − 𝑁𝐶) to reduce power dissipation, and it offers the same robustness as the CC type.
The labels 𝑃, 𝑁, and 𝐶 are referenced from this [here](https://ieeexplore.ieee.org/document/5601802).

## Demo

![image](https://github.com/QBlobster/true-single-phase-clock/blob/main/Demo.png)

Demo made by [Zhe-Wei Pan](https://github.com/QBlobster)
## Installation

Ensure you have obtained the `SSH_key` and `config` from [Zhe-Wei Pan](https://github.com/QBlobster) and copied it to the following directory:

```Shell
cp SSH_KEY ~/.ssh/key/SSH_KEY
cp config ~/.ssh/key/config
```

Install **True Single-Phase Clock (TSPC)** with the following command

```Shell
git clone git@github.com:QBlobster/true-single-phase-clock.git
```
## Usage

Make sure to start from `C shell` by `tcsh` and set the environment variable for HSPICE.

```Shell
# Change to C shell
tcsh

# set library path
source /usr/cad/synopsys/CIC/hspice.cshrc
```

You can modify the spice netlist file in `TSPC.sp` to analyze the differnet circuits.

Run `hspice` to generate the waveform, measure the rise/fall time and power, and ensure the duty cycle falls within the range of 45% to 55%:

```Shell
# Simulate TSPC
hspice -i TSPC.sp -o ./lis/TSPC.lis
```

The waveform result will be stored in `./lis/TSPC.tr0`. You can use `wv` to view the waveform.

| | outA | outB | outC |
| :-----: | :-----: | :----: | :----: |
| Rise Time | 1.946×10<sup>-11</sup> | 3.633×10<sup>-11</sup> | 7.229×10<sup>-11</sup> |
| Fall Time | 1.889×10<sup>-11</sup> | 4.010×10<sup>-11</sup> | 7.751×10<sup>-11</sup> |
| Rise Time/Cycle | 0.2443 | 0.2262 | 0.2281 |
| Rise Time/Cycle | 0.2371 | 0.2497 | 0.2422 |
| Duty Cycle | 50.65% | 50.00% | 50.40% |

## Contributing

Contributions are always welcome!

Please contact [Zhe-Wei Pan](https://github.com/QBlobster).


## License

[MIT](https://choosealicense.com/licenses/mit/)

