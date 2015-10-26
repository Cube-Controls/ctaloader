## ctaloader   

Bootloader for Pi-Cubes communication thermostat that provides way to upgrade firmware using Raspberry-Pi and Pi-Cubes Main Board.

More information: [www.cube-controls.com/pi-cubes.html](http://www.cube-controls.com/pi-cubes.html)

## Installation

    $ git clone https://github.com/Cube-Controls/ctaloader.git
	
	$ cd ctaloader

	$ make


## Usage

CYACD firmware file name has to be provided as parameter. 

    $ ./ctaloader <cyacd file name>
	
	

## Example

After powering up Pi-Cubes Stat there is a 5 seconds time frame to start bootloader to download new firmware to Pi-Cubes Communication Thermostat.
Execute next command, change file name to applicable firmware.

    $ ./ctaloader PiCubesStatV100.cyacd

Bootloader should start, if does not start power down CTA , cancel bootloader with Ctrl+C and try again.

	[INFO] Starting boot loader operation
	[INFO] Serial Port: /dev/ttyAMA0
	[INFO] Reading cyacd file PiCubesStatV100.cyacd
	[INFO] Read in 190 lines from PiCubesStatV100.cyacd
	[INFO] Write line 190 from 190 lines.
	[INFO] Closing UART connection
	[INFO] Bootloader operation succesful

 
Once programmed, thermostat will reset itself and start running new firmware.

## Reference

[PSoC® 3, PSoC 4, and PSoC 5LP UART Bootloader AN68272](http://www.cypress.com/?rID=50230&source=AN68272)

[https://github.com/gv1/cybootload_linux](https://github.com/gv1/cybootload_linux)




