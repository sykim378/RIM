# Risk-Guided Intensity Mapping (RIM)

![](https://img.shields.io/badge/MATLAB-R2025a-green.svg)
![](https://img.shields.io/badge/MATLAB-Image%20Processing%20Toolbox-green.svg)
![](https://img.shields.io/badge/OS-Windows%20%7C%20Linux%20%7C%20macOS-green.svg)

Official MATLAB implementation for the paper **"Risk-Guided Intensity Mapping for Mitigating Amplification Artifacts in Low-Light Image Enhancement"**.

In this paper, we propose **RIM (Risk-Guided Intensity Mapping)**, a lightweight and highly efficient post-processing framework designed to amplification artifacts introduced by existing low-light image enhancement (LIE) algorithms. 


## Visual Results


| Method | Input | Initial LIE Enhanced | Proposed (RIM) |
|:---:|:---:|:---:|:---:|
| **HE** | <img src="Images/Input/01.JPG" width="250"> | <img src="Images/Initial_enhanced/HE/01.png" width="250"> | <img src="Images/Output/01_HE_RIM.png" width="250"> |
| **Zero-IG** | <img src="Images/Input/01.JPG" width="250"> | <img src="Images/Initial_enhanced/Zeroig/01.png" width="250"> | <img src="Images/Output/01_Zeroig_RIM.png" width="250"> |
| **PairLIE** | <img src="Images/Input/13.JPG" width="250"> | <img src="Images/Initial_enhanced/PairLIE/13.png" width="250"> | <img src="Images/Output/13_PairLIE_RIM.png" width="250"> |
| **RG-CACHE** | <img src="Images/Input/13.JPG" width="250"> | <img src="Images/Initial_enhanced/RG-CACHE/13.png" width="250"> | <img src="Images/Output/13_RG_RIM.png" width="250"> |
| **Zero-DCE** | <img src="Images/Input/106005.jpg" width="250"> | <img src="Images/Initial_enhanced/ZeroDCE/106005.png" width="250"> | <img src="Images/Output/106005_ZeroDCE_RIM.png" width="250"> |
| **EnlightenGAN** | <img src="Images/Input/35010.jpg" width="250"> | <img src="Images/Initial_enhanced/EnlightenGAN/35010.png" width="250"> | <img src="Images/Output/35010_EGAN_RIM.png" width="250"> |



## Project Structure

Please ensure your directories are organized as follows before running the demo:

```text
RIM/
├── demo_RIM.m
├── RIM.m 
├── Images/
│   ├── Input/            # Place original low-light images here
│   ├── Initial_enhanced/ # Place initially enhanced images (e.g., Histogram Equalization) here
│   └── Output/           # Enhanced results will be saved/displayed here
└── README.md
```

## Requirements

* MATLAB (Tested with MATLAB R2025a, but it should work seamlessly on recent versions)
* Image Processing Toolbox

## How to Run

1. **Clone the repository:**
   ```bash
   git clone https://github.com/sykim378/RIM.git
   cd RIM
   ```

2. **Prepare your images:**
   * Place a low-light input image in `Images/Input/` (e.g., `01.JPG`).
   * Place the corresponding initially enhanced image in `Images/Initial_enhanced/` (e.g., `HE/01.png`).
   * *Note: Open `demo_RIM.m` and update `inputPath` and `enhancedPath` to match your actual file paths if they are different.*

3. **Run the script in MATLAB:**
   * Open MATLAB and navigate to the cloned `RIM` folder.
   * Run the demo script in the MATLAB Command Window:
     ```matlab
     demo_RIM
     ```
   
   The script will process the image using the proposed RIM algorithm and automatically display a figure comparing the **Original Input**, **Initial Enhanced**, and **Proposed RIM Output**.

## Parameters
You can adjust the following parameters inside the script to test with your own images:

* `thresholdRatio` (Default: `5`)
  * The threshold used to identify risk regions. The algorithm is robust to this value, but you can adjust it to fine-tune the sensitivity of risk detection.
* `targetPSNR` (Default: `36`)
  * Controls the allowable degradation caused by noise amplification. 
  * **Note:** This does *not* represent the output PSNR. A lower value (e.g., 20) preserves more of the original enhancement, while a higher value (e.g., 100) applies aggressive noise/artifact suppression. The recommended practical range is 32–40.

## Citation
If you find this code useful for your research, please consider citing our paper:

    @article{kim2026rim,
      title={Risk-Guided Intensity Mapping for Mitigating Amplification Artifacts in Low-Light Image Enhancement},
      author={Kim, Sang-yun and Lee, Yun-gu and Hwang, Je-jung},
      journal={TBD},
      year={2026}
    }

## Contact
If you have any questions or encounter issues, please feel free to open an issue or contact: 
eapsy1ka@gmail.com
