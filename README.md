Digital Phase-locked-loop software for Locking a Frequency Comb using a Red Pitaya

This software runs on the Red Pitaya with a user interface written in Python that runs on your control PC.

The firmware/software allows the use of this hardware to phaselock a frequency comb. More generally, together with the hardware, it provides a digital control box that can support a dual-channel phase-locked loop including the front-end IQ detection of the input rf signals. While this digital control box could therefore be used to phase lock other systems, the discussion below assumes the user is operating a frequency comb.



Getting started
---------------------------
Read the "Instructions and operation manual for RedPitaya DPLL.pdf" file.



Additional information
---------------------------
Additional information can be obtained from the instructions manual of the NIST digital control box (https://www.nist.gov/services-resources/software/fpga-based-digital-control-box-phase-stabilization-frequency-comb).  The Red Pitaya digital phase-locked loop is based on this software and thus shares many of the same functionality with some differences.
Some other information is included in the slides for the CLEO 2017 presentation associated with this project (Slides_CLEO2017_JDD.pptx) and in the Review of Scientific Instruments article on the frequency comb (http://www.nist.gov/manuscript-publication-search.cfm?pub_id=918079), which contains information about the NIST digital control box version of the digital PLL.


Disclaimer
---------------------------
This is not a commercial product, this is a research tool so there are some “rough edges” and limited documentation, if you need support you can contact me at (jean-daniel.deschenes@gel.ulaval.ca) – although I cannot guarantee that I will answer quickly all the questions, but I will do my best to do so.
This software was built starting from two existing code bases: the NIST digital control box software for most of the FPGA firmware and all the Python code, and a part of the Red Pitaya software for the Zynq embedded software and FPGA firmware.  Both the NIST and the Red Pitaya code were released in the public domain with a specific license, both placed in the subfolder "Licenses".
