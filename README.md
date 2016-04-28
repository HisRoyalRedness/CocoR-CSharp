# CocoR-CSharp

[![Build Status][BS img]][Build Status]
[![DL Link][DL img]][DL Link]

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
normally from there. You'll probably need to change the namespace in ```Scanner.cs``` 
and ```Parser.cs```.

[Build Status]: https://ci.appveyor.com/project/KeithFletcher/cocor-csharp/branch/master
[BS img]: https://ci.appveyor.com/api/projects/status/dff3q7sq8t1xnnvl/branch/master?svg=true
[DL Link]: https://ci.appveyor.com/api/projects/KeithFletcher/cocor-csharp/artifacts/CocoDeploy.zip?branch=master
[DL img]: https://img.shields.io/badge/Download-v1.0.1.7-brightgreen.svg