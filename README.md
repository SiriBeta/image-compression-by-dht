# Image compression by Discrete Hartley Transform

The code of this project is an example of the image compression algorithm by converting it into a discrete form by the Hartley method. 
The algorithm discolours the original image and converts it into a discrete two-dimensional series. Then decorrelates it and restores the resulting series by converting it back to the image.  

**Warning**, in this version, this algorithm works only with square images.

____

To execute the code in **GNU Octave**, two third-party packages must be installed. **signal** and **image**.
It is possible to do it by a set of the given commands in the command interpreter of the program:
`pkg install -forge signal` 
`pkg install -forge image`
