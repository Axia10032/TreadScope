# TreadScope

**Acquisition, stimulus control and analysis for spherical treadmill experiments.**

TreadScope is a Windows desktop application for low-cost behavioral experiments using an optical mouse sensor and Arduino-controlled stimulation. It integrates movement recording, replay, response-latency review, visualization, project management and R analysis export.

**Version:** 1.1.21  
**Author:** Zhengyu Qian ([Axia10032](https://github.com/Axia10032))

## Features

- **Acquisition:** selected-device Windows Raw Input recording, X/Y calibration and stimulus-event logging.
- **Stimulus control:** Arduino serial communication for timed stimulation.
- **Replay:** trajectories, movement plots, playback controls and stimulus-aligned latency review.
- **Analysis:** response probability, latency, peak speed and movement distance.
- **Explorer:** coordinated views of stimulus-aligned movement, response distributions and trial progression.
- **Data management:** raw recording archives, SQLite project databases and metadata edit history.
- **Export:** CSV results and R/RStudio analysis workflows with a local interactive dashboard.

## Installation

Requires Windows and Python. Download this repository and open a terminal inside the `treadscope-release-preparation` folder.

Create an environment and install dependencies:

```bat
py -m venv .venv
.venv\Scripts\python.exe -m pip install -r requirements.txt
```

Launch TreadScope:

```bat
.venv\Scripts\python.exe treadscope.py
```

After installation, you can also use `run.bat`.

R and RStudio are separate installations required for the R analysis workflow.

## Basic workflow

1. Select the intended mouse sensor in **Acquisition**.
2. Configure the output location and trial information.
3. Calibrate X and Y using known physical surface displacement.
4. Connect the Arduino when using physical stimulation.
5. Record the trial, deliver the stimulus and save the recording.
6. Open the recording in **Replay** and inspect detected movement onset.
7. Review project results in **Analysis** and **Explorer**.
8. Export data or generate an R analysis package.

## Documentation

- [Data format and timing](treadscope-release-preparation/docs/data-and-timing.md)
- [Hardware integration and serial protocol](treadscope-release-preparation/docs/hardware.md)
- [Screenshots](treadscope-release-preparation/docs/screenshots.md)
- [Changelog](treadscope-release-preparation/CHANGELOG.md)

## Project status

The full functional workflow has been tested by the author.

The matching Arduino firmware and a downloadable example recording will be added. Dependency versions and project licensing are being finalized.

Timing accuracy depends on the sensor, host computer, serial communication and physical stimulus setup. Airflow arrival delay should be measured for each experimental configuration.

## Author and acknowledgments

Developed by **Zhengyu Qian**.

Thanks to the **University of Toronto Scarborough (UTSC)** for providing opportunities to test TreadScope.

## Related work

Lott, G. K., Rosen, M. J., and Hoy, R. R. (2007). An Inexpensive Sub-Millisecond System for Walking Measurements of Small Animals Based on Optical Computer Mouse Technology. *Journal of Neuroscience Methods*, 161, 55–61.

## License

A project license has not yet been assigned. Third-party dependencies retain their respective licenses.
