# TreadScope v1.1.38

This release consolidates the changes since v1.1.21. It adds state-triggered automated trial sequences, introduces the Project Data workspace, and connects automated QC flags to trial-level Replay and manual review.

## Highlights

- **Automated acquisition.** Set the number of trials per animal and airspeed, the minimum interval from recording stop to the next stimulus ON, and the recording duration after ON. Combine sustained stillness, sustained movement and speed-range criteria with **Any / All**. The sequence can pause, resume or be tested with simulated stimuli. Completed trials are staged for group review before saving.
- **Clickable sequence timelines.** In Acquisition group review and Replay, select a trial by clicking its shaded interval. The active interval is green. Replay opens automated groups in overview mode and offers a switch back to the progress slider. Per-trial plots retain ON/OFF markers.
- **Automatic Latency Review.** Replay calculates the active recording on load or trial switch. Simulated-only recordings can be inspected as diagnostic previews even when project statistics exclude simulated stimuli.
- **Project Data.** A dedicated, persistent workspace provides project search and filters, a sortable recording table, waveform and result previews, metadata and edit history, exclusion/restoration, and recording-level or stimulus-level CSV exports. Jump to Replay or analyze a selection from the catalog.
- **More ways to define a response.** Combine onset from rest, a pause during motion, speed increase from baseline, and heading change. The timing panel shows the baseline, response search, measurement window, confirmation, and optional airflow correction on one axis.
- **Configurable QC and review status.** Flag missing stimulus markers, incomplete recordings, interrupted searches, acquisition faults and negative corrected latencies. Optionally set minimum or maximum bounds for raw or corrected latency and for movement metrics. Review flags can open Replay at the flagged time. Confirmed flags are green and can be undone; confirmation does not change response classification or statistical inclusion.
- **Analysis and Explorer usability.** Searchable multi-select filters cover projects, groups, animal-ID day, animals and airspeeds. Relevant plots and R displays put conditions at the same airspeed together. Analysis now groups refresh, calculation and export actions in one toolbar, displays a full-recording motion summary, and avoids redundant refreshes when only presentation preferences change.

## Upgrade

Use the new application source with the same recording output root to reopen existing projects. Back up the whole project folder, including recording ZIPs and `project.sqlite`, before upgrading. Review the trigger and response definitions for your experiment, then run **Calculate All** if you want to refresh stored results under changed analysis settings.

The Windows source ZIP requires Python and the packages in `requirements.txt`. It does not include an installer, an Arduino sketch or example recordings. See the bundled README for installation and the changelog for the individual version steps.
