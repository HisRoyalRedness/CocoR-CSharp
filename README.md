# CocoR-CSharp
The Coco/R compiler generator from http://www.ssw.uni-linz.ac.at/coco/, with minor modifications to suit my needs.

Building the project in Visual Studio will do the following:

* A pre-build step will run ```Coco.exe``` to generate the scanner and parser partial classes.
* The VS build will then compile these and the other files into a new ```Coco.exe```.

As you can see, we need an initial ```Coco.exe``` to get things going, so I've included
one in the repository.

To use this app, copy everything from the Deploy folder into you project folder.
You'll need to provide your own .ATG file, and once ```coco.exe``` is run, it will 
generate a ```Scanner.generated.cs``` and ```Parser.generated.cs``` to complement
the ```Scanner.cs``` and ```Parser.cs``` static files. You can build your project
normally from there.