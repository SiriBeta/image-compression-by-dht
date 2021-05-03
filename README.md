# Image compression by Discrete Hartley Transform

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT) [![Platform : GNU Octave](https://img.shields.io/badge/platform-GNU%20Octave-orange)](https://www.gnu.org/software/octave/)

The code of this project is an example of the image compression algorithm by converting it into a discrete form by the Hartley method. 
The algorithm discolours the original image and converts it into a discrete two-dimensional series. Then decorrelates it and restores the resulting series by converting it back to the image.  

**Warning**, in this version, this algorithm works only with square images.

____

To execute the code in **GNU Octave**, two third-party packages must be installed. **signal** and **image**.
It is possible to do it by a set of the given commands in the command interpreter of the program:
`pkg install -forge signal` 
`pkg install -forge image`

____

**Example of compression work**

Source image

![uncompressed](image-compression-by-dht/images/uncompressed.png?raw=true "uncompressed")

Compressed


![compressed_0.001](image-compression-by-dht/images/compressed_0.001.png?raw=true "compressed_0.001")


![compressed_0.01](image-compression-by-dht/images/compressed_0.01.png?raw=true "compressed_0.01")


![compressed_0.005](image-compression-by-dht/images/compressed_0.005.png?raw=true "compressed_0.005")


![compressed_0.05](image-compression-by-dht/images/compressed_0.05.png?raw=true "compressed_0.05")
