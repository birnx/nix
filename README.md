## Highlights

- clean keymap + unicode setup using helper macros from
  [zmk-nodefree-config](https://github.com/urob/zmk-nodefree-config)
- the base keymap and combo setup are independent of the physical location of
  keys and are re-used for multiple keyboards. The configuration is fit onto
  larger boards by padding it via a modular structure of "extra keys"
- ["timer-less" homerow mods](#timeless-homerow-mods) 
- combos replacing the symbol layer
- smart numbers and smart mouse layers that automatically toggle off when done
- sticky shift on right thumb, double-tap (or shift + tap)[^1] activates caps-word
- arrow-cluster doubles as <kbd>home</kbd>, <kbd>end</kbd>, <kbd>begin/end of
  document</kbd> on long-press
- more intuitive shift-actions: <kbd>, ;</kbd>, <kbd>. :</kbd> and <kbd>? !</kbd>
- <kbd>shift</kbd> + <kbd>space</kbd> morphs into <kbd>dot</kbd> →
  <kbd>space</kbd> → <kbd>sticky-shift</kbd>
- "Greek" layer for mathematical typesetting (activated as sticky-layer via a combo)
- modified Github Actions workflow that recognizes git-submodules
- automated
  [build-scripts](https://github.com/urob/zmk-config/tree/main/scripts#readme)
  for local and Docker-based building (independently of VS Code)

![](img/keymap.png)

## Timeless homerow mods
