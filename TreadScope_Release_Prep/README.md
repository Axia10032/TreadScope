# TreadScope

Acquisition, stimulus control and analysis for spherical treadmill experiments.

TreadScope is a Windows research application connecting mouse-sensor movement recording, Arduino stimulus control, replay, response-latency review, project management and R analysis export in one desktop workflow.

**Version:** 1.1.21 · **Author:** Zhengyu Qian (Axia10032)

## Features
- Selected-device Windows Raw Input acquisition and independent X/Y calibration.
- Serial stimulus commands and recorded ON/OFF acknowledgements.
- Replay with trajectories, velocity plots and onset-detail review.
- Analysis and Explorer views for response probability, latency, movement and trial progression.
- Raw recording ZIP archives, SQLite project metadata/history and CSV exports.
- R/RStudio analysis export and local dashboard workflow.

## Install and launch
Install Python on Windows. In the extracted project directory, run:

```bat
py -m venv .venv
.venv\Scripts\python.exe -m pip install -r requirements.txt
.venv\Scripts\python.exe treadscope.py
```

After installation, `run.bat` launches the same environment. Dependency versions are not yet pinned to the author's tested environment. R/RStudio are separate installations needed for the R workflow.

## Quick start
1. Select the intended sensor in Acquisition; use Detect Moving Device to identify it.
2. Configure the output location and trial information. Calibrate X and Y with known physical surface travel.
3. For physical stimulation, connect the matching Arduino firmware and confirm the port and baud rate.
4. Start recording, deliver a stimulus and stop or use automatic stop. Complete trial labels and Save.
5. Open the saved recording in Replay and review movement onset using Latency Settings.
6. Select project records in Analysis, calculate results, inspect Explorer and export results as needed.

See [data and timing](docs/data-and-timing.md), [hardware](docs/hardware.md), [screenshots](docs/screenshots.md) and [release preparation](docs/release-preparation.md).

## Status
The author reports completion of the full functional workflow test. This preparation bundle preserves the uploaded Python source byte-for-byte under a stable entry filename. It has not been independently tested on Windows here. The matching Arduino firmware and a downloadable example recording are still to be added.

## Author and acknowledgments
Developed by Zhengyu Qian. The author thanks the University of Toronto Scarborough (UTSC) for providing opportunities to test TreadScope.

The author confirms that the application contains no copied third-party code and no unpublished third-party code or materials. Third-party runtime dependencies retain their own licenses. Project license selection is pending; this preparation bundle does not assign a license.

## Background
Lott, G. K., Rosen, M. J., and Hoy, R. R. (2007). An Inexpensive Sub-Millisecond System for Walking Measurements of Small Animals Based on Optical Computer Mouse Technology. Journal of Neuroscience Methods, 161, 55–61.

This reference describes related measurement methods; it is not a claim of inherited code or equivalent timing performance.
