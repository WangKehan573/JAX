# NOTE: This script can be modified for different atomic structures, 
# units, etc. See in.elastic for more info.
#

# Define the finite deformation size. Try several values of this
# variable to verify that results do not depend on it.
variable up equal 2.0e-2
 
# metal units, elastic constants in GPa
units		real
variable cfac equal 1.01325e-4
variable cunits string GPa

# Define MD parameters
variable nevery equal 10                  # sampling interval
variable nrepeat equal 10                 # number of samples
variable nfreq equal ${nevery}*${nrepeat} # length of one average
variable nthermo equal ${nfreq}           # interval for thermo output
variable nequil equal 100*${nthermo}       # length of equilibration run
variable nrun equal 100*${nthermo}          # length of equilibrated run
variable temp equal 300.0                # temperature of initial sample
variable timestep equal 1            # timestep
variable adiabatic equal 0                # adiabatic (1) or isothermal (2)
variable tdamp equal 1                # time constant for thermostat
variable seed equal 123457                # seed for thermostat

# generate the box and atom positions 
boundary	p p p
atom_style charge

box tilt large

read_data      MoS2.data

replicate 6 6 1 
mass 1 95.95
mass 2 32.065
velocity	all create ${temp} 87287
