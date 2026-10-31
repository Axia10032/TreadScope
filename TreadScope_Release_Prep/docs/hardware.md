# Hardware integration

The supplied photograph shows an Arduino UNO-compatible R3 board, XY-MOS driver, solenoid valve, power connections and synchronized LED. It documents the assembly, not a verified wiring schematic.

The uploaded release ZIP does not contain Arduino firmware. Add the exact tested sketch to `firmware/` before distributing a reproducible hardware package. Confirm pin assignments, active levels, supply rating, ground connections and valve protection from that sketch and the real wiring.

## Host protocol (from v1.1.21 source)
Commands are ASCII lines terminated by newline:
- `PING`
- `PULSE,<id>,<duration_ms>`
- `STOP`

Recognized replies include `READY,1`, `PONG,1`, `ON,<id>,<device_time>`, `OFF,<id>,<device_time>`, `STOPPED`, `BUSY` and `ERROR`. Device-time units must be documented from the matching firmware. The host sends periodic heartbeats and reports missing acknowledgements.
