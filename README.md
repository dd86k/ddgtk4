Minimal dynamic bindings for GLib, GObject, Gio, GTK4, and WebKitGTK.

Work in progress.

Why?
- Initially saw as a challenge.
  - For another project that will depend on this.
  - Hand-written bindings, without the need of translating from text files and external tools.
  - No OOP-like wrappers for simplicity and ease of maintenance.
- Up-to-date GTK4/WebKitGTK bindings.
  - GtkD states supporting 3.24 while it loads gtk4, so I'm a little confused.

Issues:
- **Important**: Does not work with DMD (tested on 2.106.1+cc-13.3.0+linux64). GDC and LDC are fine.
- **Important**: Bindings are added incrementally by hand. There are a lot of missing bindings.
- **Important**: Does not offer version target bindings.
  - e.g., stuff added/deprecated in certain versions, GTK 4.10 being rather a big update.
- Does not offer OOP wrappers.
- GDK and GSK bindings are missing.
- Windows dependencies are a bit messy.
  - MSYS2 does not offer WebKitGTK binaries for Windows.

Requirements:
- D compiler.
- git, since dependencies are based to particular commits.
- DUB, at least for building examples.
- libgtk-4-1 (Ubuntu package) and dependencies for GTK4.
- Optional: libwebkitgtk-6.0-4 (Ubuntu package) for WebKitGTK 6.0.

## Examples

You can run and example using `dub run :EXAMPLE --compiler=COMPILER -- ARGS`, where:
- `EXAMPLE` is the name of the example.
- `COMPILER` is the name of the compiler (currently works with `gdc` and `ldc2`).
- `ARGS` are application arguments. Optional.

Available examples:
- `basic`: Features one button that prints "Hello" via from the command-line.
- `form`: Features a few tabs in a NoteBook, and some controls.
- `header`: Features a HeaderBar with a Button and MenuButton.
- `webkit`: Features an example with WebKitGTK.
  - By default, it connects to `https://example.org/`. You can specify a site using `--site=`.