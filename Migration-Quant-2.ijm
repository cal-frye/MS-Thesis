makeRectangle(789, 413, 1641, 1641);
run("Crop");

run("16-bit");

setAutoThreshold("Default");
//run("Threshold...");
setOption("BlackBackground", false);
run("Convert to Mask");
run("Analyze Particles...", "size=75-Infinity circularity=0.00-1.00 show=Outlines display clear summarize add");
