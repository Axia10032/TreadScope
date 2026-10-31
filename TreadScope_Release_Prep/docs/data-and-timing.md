# Data and timing

Current recording ZIPs contain `raw.csv`, `events.csv` and `metadata.json`.

Raw columns: `time_s`, `raw_dx`, `raw_dy`, `device_handle`, `dx`, `dy`, `x`, `y`, `path_length`.
Event columns: `time_s`, `event`, `source`, `device_time`, `clock`, `trial_id`, `detail`.

Preserve raw counts alongside calibrated movement. Calibration is in counts/mm; use measured surface displacement and recalibrate after changing sensor geometry or DPI. A calibration value of 1 is meaningful only when independently established.

The host serial reader timestamps received ON/OFF replies with its performance clock and retains the device timestamp separately. Receipt time, electrical switching time and physical airflow arrival are distinct. Corrected latency subtracts the configured airflow delay from raw latency. Record how that delay was measured.

The legacy output sampling frequency does not set hardware polling rate. New recording archives retain raw events. Display refresh and velocity-window settings affect visualization, and should not be reported as sensor sampling specifications.

The SQLite project stores recording labels, stimulus events, parameter-specific analysis and edit history. Back up the whole project folder to retain raw ZIP recordings as well as the database.

The R model template uses an animal random intercept: a binomial GLMM for response probability and log-LMMs for positive continuous outcomes. It checks design rank and missing cells. Day and trial order are not adjusted in the initial template. Review eligibility, warnings, diagnostic output and multiple-comparison results before interpreting fitted models. Response-scale log-LMM predictions are geometric means.
