# CocoR-CSharp
The Coco/R compiler generator from http://www.ssw.uni-linz.ac.at/coco/, with minor modifications to suit my needs.

Building the project in Visual Studio will do the following:

* A pre-build step will run Coco.exe (coc.bat) to generate Scanner.cs and Parser.cs
* The VS build will then compile these and the other files into Coco.exe

As you can see, we need an initial coco.exe to get things going, so I've included
one in the repository.