makeRectangle(1125, 750, 1000, 1000);
run("Crop");

run("16-bit");

setAutoThreshold("Default");
//run("Threshold...");
setOption("BlackBackground", false);
run("Convert to Mask");
run("Analyze Particles...", "size=75-Infinity circularity=0.00-1.00 show=Outlines display clear summarize add");
