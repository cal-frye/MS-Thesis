# 'MS-Thesis' Repository
Things made to help me process data from wet lab experiments.

# The Research Project
My research at the Medical University of South Carolina (MUSC) focuses on the effects of advanced glycation end products (AGEs) on prostate cancer (PCa) via modulation of macrophage activity and metabolism.

# Types of Experiments
- Migration assay
- Immunohistochemistry (IHC) stain
- Quantitative Polymerase Chain Reaction (qPCR)

# Migration Assay
To study the effect of AGEs on intercellular signaling via soluble factors and associated cell migration.
Signalling cells are placed in the wells of a tissue culture plate, and migratory cells are placed in a 8um insert added to each well.
Both groups of cells are immersed in liquid media.
BSA-AGE is added in uniform concentration to either the top compartment (migratory cells), the bottom compartment (signaling cells), or neither (control).
The plate is then incubated at 37ºC, 5% CO2, 90% humidity for 4 hours.
Media and signalling cells are collected, and the bottoms of the inserts are stained to allow detection of cells that have successfully migrated through the 8um membrane.
The quantification of these migratory cells is what the associated scripts are designed to process.

The code/files associated with processing Migration are:
- ImageJ-Migration-Macro.ijm
- Migration Data Analysis.R
