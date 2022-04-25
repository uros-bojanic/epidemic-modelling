# epidemic-modelling
[Computer Modeling] SIR/SIRS/SIRQ/ISIR/SEIR differential equation models for numerical epidemic modelling in MATLAB.

Homework/project in **Practicum in Physics 2 (13E061PF2)** at University of Belgrade, School of Electrical Engineering.

## Comparmental models

### SIR model

- `S` is the number of susceptible individuals
- `I` is the number of infectious individuals
- `R` is the number of removed individuals (either immune or deceased)

### SIRS model

- `γ` is a constant that describes the rate of immunity loss among recovered individuals (for example due to virus mutations)

![image info](Charts/4.jpg)

### SIRQ model

- `q` is a constant that describes the rate of removal of infected individuals from the population
through preventive measures (for example quarantine)


![image info](Charts/5_2.jpg)

### ISIR model

- `k` is a constant that describes the impact of the transfer epidemic information (for example due to self-isolation and avoiding contact)

![image info](Charts/6_2.jpg)

### SEIR model

- `E` is the number of exposed individuals
- `δ` is a constant that describes the rate of transition of individuals from exposed to infectious population (for example due to the incubation period)

![image info](Charts/7_2.jpg)
