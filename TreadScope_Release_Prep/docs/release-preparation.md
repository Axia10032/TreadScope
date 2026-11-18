# Maintainer release checklist

v1.1.38 has already been published. The repository documentation sync is a separate local commit; it does not update the published release, assets or tag.

1. Put the v1.1.38 code, README, screenshots and documentation in the repository and review the diff. The entry point is `TreadScope_Release_Prep/treadscope.py`.
2. Review the screenshots for any experimental values or recording IDs you do not want public. Confirm rights to distribute the embedded icon and select a project license when ready.
3. On Windows, check the archive's virtual-environment install and launcher. Smoke-test a simulated sequence, group Save, Replay, Analysis and Project Data. Record the Python, Windows and dependency versions tested.
4. Retain [release-v1.1.38.md](release-v1.1.38.md) as the bundled release notes. Keep the already published release, Windows source ZIP, SHA-256 attachment and tag unchanged during this repository sync. A generated GitHub source archive follows the tag and is separate from the Windows source ZIP. Updating the default-branch README changes the repository homepage, but does not change the tagged source snapshot.
5. Before advertising a reproducible hardware setup, add the exact matching Arduino sketch and document the tested wiring and timing. A downloadable example recording is also still pending.

Packaging verification covers the Python built-in self-test, ZIP integrity, screenshot links and source identity. It does not constitute new Windows, device, or R runtime validation.
