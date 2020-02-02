makeRectangle(870, 500, 1250, 1250);

run("Crop");

run("Despeckle");

run("Subtract Background...", "rolling=100 light separate");
run("Remove Outliers...", "radius=15 threshold=50 which=Dark");

run("32-bit");

//run("Brightness/Contrast...");
run("Enhance Contrast", "saturated=0.35");

//run("Threshold...");
setAutoThreshold("Default");
setOption("BlackBackground", false);

run("Convert to Mask");

run("Remove Outliers...", "radius=10 threshold=50 which=Dark");

run("Analyze Particles...", "size=500-Infinity circularity=0.05-1.00 show=Outlines display clear summarize add");
