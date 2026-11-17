# Changelog

## 0.3.0 — 2026-11-17

First public release.

* Ready-made diagrams: `\SpinEchoDiagram`, `\GradientEchoDiagram`,
  `\InversionRecoveryDiagram`, `\EPIDiagram` (gradient- or spin-echo,
  single- or multi-shot), `\TurboSpinEchoDiagram`,
  `\DiffusionSpinEchoDiagram`, `\DiffusionEPIDiagram`, computed from imaging
  parameters (TE, TR, TI, slice, FOV, matrix, dwell time, b-value, …).
* `mriseq` environment with `\rfpulse`, `\gradient`, `\phasetable`,
  `\readout`, `\fid`, `\echo`, `\waveform`, `\marker`, `\interval`, `\gap`,
  `\shadearea` and `\annotate` (TikZ code in sequence coordinates).
* Rows, time window and annotations can be chosen freely; `schematic` and
  `detailed` presets.
* Automatic compression of long pauses with axis cut marks; `repetitions`.
* k(t) rows and a k-space trajectory panel.
* Shading of equal gradient areas (`equal areas`, `\shadearea`).
* Label placement without overlaps; compact layout for narrow diagrams.
* Styles `color`, `bw`, `grayscale`, and user-defined styles.
