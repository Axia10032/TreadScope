# Changelog

This history covers the available application snapshots from v1.1.21 through v1.1.38. The GitHub release notes aggregate v1.1.22–v1.1.38.

## 1.1.38
- Avoid redundant Analysis reloads after tab or layout changes by distinguishing project data revisions from saved UI preferences. Keep non-mutating Analysis controls available while Explorer reads its separate snapshot.
- Align Automation sequence control heights and row spacing with the rules panels; remove the inline timeout explanation.

## 1.1.37
- Move the stillness fields under Sustained stillness; place the trigger preview beside the sequence settings. Refine trigger and measurement/timing diagrams and keep inactive rule fields visible and disabled.
- Display two decimal places by default in numerical setting fields while retaining additional entered precision.
- Show QC reason counts on separate lines and add a flagged/total preview bar. Add persistent Confirm Review / Undo Confirm and green markers for confirmed findings; changed evidence can require review again.
- Replace the editable Analysis interval row with a full-recording summary using the recording's velocity window. Tighten toolbar spacing.

## 1.1.36
- Combine multiple auto-trigger criteria and multiple response criteria via Any / All; give each condition its own visible controls. Fit settings dialogs to available screen space.
- Add optional QC bounds for latency, peak speed, cumulative path length and net displacement, with movement bounds stored separately by unit.
- Improve the simulated-stimulus toggle's labels and visual states; remove the click-instruction text from the Analysis summary.

## 1.1.35
- Reorganize the Analysis toolbar into recording, rule/calculation and export groups. Move Refresh and Export Statistics to the toolbar and incorporate recording summary recalculation into Calculate All.
- Move simulated inclusion into a toggle button. Highlight Analysis trial row numbers in yellow when quality review is needed.

## 1.1.34
- Add dedicated two-column settings for automation trigger criteria, analysis response detection, and QC.
- Add sustained movement and speed-range trigger rules, optional trigger timeout, and response detection for pauses, speed increases and heading changes alongside onset.
- Flag recording or response issues for manual review and open the flagged trial in Replay at the relevant time when known.

## 1.1.33
- Populate the Analysis day filter from loaded records rather than a fixed range. Derive the day from the Animal ID and show an Unknown day option where needed.

## 1.1.32
- Add searchable multi-selection for Analysis projects, groups, days, animals and airspeeds. Carry the active selections through project analysis and exports.

## 1.1.31
- Sort categorical conditions by airspeed first, then group, in relevant application views and generated R displays.

## 1.1.30
- Automatically calculate Replay latency results when the active recording changes. Show simulated-only recordings as diagnostic previews when simulated events are excluded from project analysis; diagnostic results do not update the project analysis cache.

## 1.1.29
- Make the shaded trial spans clickable in Acquisition and Replay. Build grouped Replay timelines using automation sequence metadata and add the Overview / Progress switch.
- Remove Replay's separate X Zoom and Cursor / Follow Playhead rows; retain plot zoom and pan. Correct preference handling for sorting and displaying numeric data, keeping missing values last.

## 1.1.28
- Turn the database view into a persistent Project Data workspace with search, filters, a recording table, a detail inspector, selection-based actions, and CSV exports.
- Highlight the active trial in the Acquisition overview. Add post-stimulus recording duration to Stillness settings and place simulated inclusion next to Export Statistics in Analysis.

## 1.1.27
- Stage completed automatic trials for condition-level review, permit review and editing of individual trial IDs, and save or discard the group as a unit.
- Recover staged groups after interruption and retain publication bookkeeping for recovery.

## 1.1.26
- Record ON and OFF edges for a simulated pulse, using the configured pulse duration.
- Refine condition timelines with trial spans and per-trial pre-/post-stimulus speed traces; show ON/OFF labels in detailed trial plots.

## 1.1.25
- Fix intermittent Start Sequence clicks caused by repeated changes to the button's enabled state while pressed.

## 1.1.24
- Allow simulated automation to run with compatible system pointing input, distinguish it from physical-sensor capture, and refresh condition controls when starting a new trial.

## 1.1.23
- Add sequence pause/resume, automation status and timing markers, and exclude paused wall time from the sequence timeline. Complete an already triggered response interval before pausing.
- Support automated testing with simulated stimuli, refine fault handling and reorganize the latency settings and Analysis action row.

## 1.1.22
- Introduce automatic trial sequencing with stillness-dependent stimulus timing and a speed overview for the current animal × airspeed condition.
- Refine Replay controls and the manual Response / No response override flow.

## 1.1.21
- Application renamed to TreadScope with updated icon.
- Settings retain Trial Information, Sampling, Calibration, Output, Shortcuts, Plot Appearance, Database and About.
- Existing configuration and recording paths remain compatible.
- R export uses TreadScope.Rproj.

## Repository preparation
- Stable `treadscope.py` entry filename; source contents unchanged.
- Added installation, data/timing, hardware and release-preparation documentation.
- Added author citation metadata and supplied screenshots.
