# Printed Circuit Board (PCB) Inspection Using Image Processing

Printed Circuit Boards (PCB) have been used for creating fixed connections between electronic components. The mass production of PCBs include tedious tasks that are done repeatedly, possibly for only one circuit. During the process, PCB production may encounter uncontrolled parameters that may damage the PCB. These resulting defects are not limited to dust, spurious metals, over etching and under etching. Large companies hire a number of operators or inspectors to manually check the PCB panels for any inconsistencies. This process takes up a lot of time and will cost more human resources. Modern PCB circuits become more complex making manual inspection taxing and exhausting. Instead of manually inspecting the board, this repository implements an algorithm that automatically checks for defective PCB units. 

## Getting Started

### Prerequisites

* MATLAB version 9.9.0.1462360 (R2020b)

## Usage

### Flowchart 

The proposed algorithm to be used on the dataset consists of grayscaling, resizing, sharpening, binarization, and XOR comparison.

![Alt text](/README_folder/pcb_flowchart.png?raw=true "PCB Flowchart")

Converting the input image to grayscale is done with the ***rgb2gray()*** function from MATLAB. Then, the input image should have the same dimensions with the reference image in order for the next processes to function properly. The function ***imresize()*** is used for this application. Some images become blurry after the resizing process. To minimize the effect, the function ***imsharpen()*** is used. The binarization process is implemented with the ***imbinarize()*** function which automatically acquires the global threshold of the image. Finally, the reference image and the resulting binarized image is XOR compared using the ***bitxor()*** function from MATLAB.

### Running the Program

Using the ***imread()*** function, place the desired filename inside the function.

**Note:** 
- *img1* is the variable for the reference/softcopy image.
- *img2* is the variable for the PCB image.

Examples:

```
img1 = imread('Design 1.png');
img2 = imread('Actual 1.png');
```

```
img1 = imread('Design 2.png');
img2 = imread('Actual 2.png');
```
