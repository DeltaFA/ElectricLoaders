Modifies loaders to require power based on their speed.

# Settings
Base energy usage can be changed. 2.5kJ per item by default.

Has two possible calculation modes:

- Exponential [Default] - Multiplies the energy used per item by the "level" of the loader [items/s divided by 15]. 

- Linear - Uses energy per item without modyfying it further.

# Compability
It should be compatible with any modded loader using the Vanilla prototypes. 

Automatically detects if a loader uses power already and doesn't overrite it.