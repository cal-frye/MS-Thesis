run("Sharpen");

run("16-bit");

run("Enhance Contrast...", "saturated=0.2");

run("Despeckle");

//run("Threshold...");
setAutoThreshold("Default");
setOption("BlackBackground", false);

run("Convert to Mask");

run("Analyze Particles...", "size=500-Infinity circularity=0.00 show=Outlines display clear summarize add");
