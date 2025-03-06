# platypus [![arXiv](https://img.shields.io/badge/arXiv-2202.08377-blue.svg?style=flat)](https://arxiv.org/abs/2202.08377) [![arXiv](https://img.shields.io/badge/arXiv-2202.08380-blue.svg?style=flat)](https://arxiv.org/abs/2202.08380)

This repository provides MATLAB files used to obtain some of the numerical results in the papers "The platypus of the quantum channel zoo" (https://arxiv.org/abs/2202.08380) and "Generic nonadditivity of quantum capacity in simple channels" (https://arxiv.org/abs/2202.08377).

### Code dependencies
- Toby Cubitt's MATLAB package *quantinf*, available at https://www.dr-qubit.org/matlab.html.
- MATLAB's *particleswarm* function, packaged in the "Global Optimization Toolbox" (this can be replaced by other optimization routines such as *fminunc*, see the file [optimize_private_information](optimize_private_information.m) for how to specify an optimizing routine).

### Getting started
Use the following files to generate the data shown in Fig. 1 of [arXiv:2202.08377](https://arxiv.org/abs/2202.08377), which shows the amplification of coherent information of the platypus channel using various auxiliary channels:
- [amplification_qubit_amplitude_damping.m](amplification_qubit_amplitude_damping.m)
- [amplification_qubit_depolarizing.m](amplification_qubit_depolarizing.m)
- [amplification_qubit_erasure.m](amplification_qubit_erasure.m)

The file [amplification_random_qubit_channel.m](amplification_random_qubit_channel) computes the amplification of coherent information of the platypus channel used jointly with a random qubit channel.

### List of files
#### Main script files
- [amplification_qubit_amplitude_damping.m](amplification_qubit_amplitude_damping.m)
- [amplification_qubit_depolarizing.m](amplification_qubit_depolarizing.m)
- [amplification_qubit_erasure.m](amplification_qubit_erasure.m)
- [amplification_random_qubit_channel.m](amplification_random_qubit_channel)

#### Channels
All channels take an additional argument `mode` with possible values `choi`, `kraus`, `isom` to generate the Choi matrix, Kraus representation or isometric representation of the channel, respectively.
- [amp_damp.m](amp_damp.m): Amplitude damping channel
- [depol_chan.m](depol_chan.m): Qubit depolarizing channel
- [erasure.m](erasure.m): Erasure channel
- [vs_channel.m](vs_channel.m): Qutrit platypus channel

#### Optimization routines
- [optimize_private_information.m](optimization_private_information.m): Optimize the private information of a channel. If the purifying dimension `r = dim(4)` of the argument `dim` is equal to 1, this optimizes over pure-state ensembles, and thus optimizes the coherent information.
- [vs_coherent_information.m](vs_coherent_information.m): Computes the single-letter coherent information of the qutrit platypus channel.

#### Auxiliary functions
- [bloch2dm.m](bloch2dm.m): Convert the Bloch vector of a qubit state to a density matrix.
- [check_psd.m](check_psd.m): Check if a given operator is positive semidefinite.
- [choi2transfer.m](choi2transfer.m): Convert the Choi representation of a channel to the linear representation (sometimes also called transfer matrix).
- [compute_average_state.m](compute_average_state.m): Compute the average state of a given quantum state ensemble.
- [compute_ensemble.m](compute_ensemble.m): Convert a vector used in an optimization routine to a quantum state ensemble.
- [compute_joint_ci_ansatz.m](compute_joint_ci_ansatz.m): Compute the coherent information of the platypus channel with an auxiliary channel using the special ansatz in eq.(5) of [arXiv:2202.08377](https://arxiv.org/abs/2202.08377).
- [compute_priv_inf.m](compute_priv_inf.m): Compute the private information of a given quantum state ensemble (during the optimization, i.e., the input is the variable vector and not the quantum state ensemble itself).
- [dm2bloch.m](dm2bloch.m): Convert a qubit density matrix to the Bloch vector representation.
- [paulis.m](paulis.m): Compute the three Pauli matrices X,Y,Z.
- [transfer2choi.m](transfer2choi.m): Convert the linear representation (or transfer matrix) of a channel to the Choi matrix.