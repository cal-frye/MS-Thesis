makeRectangle(1125, 750, 500, 500);

run("Crop");

//run("Brightness/Contrast...");
run("Enhance Contrast", "saturated=0.35");

run("32-bit");
setAutoThreshold("Default");

//run("Threshold...");

setOption("BlackBackground", false);

run("Convert to Mask");
run("Analyze Particles...", "size=300-Infinity circularity=0.00-1.00 show=Outlines display clear summarize add");
