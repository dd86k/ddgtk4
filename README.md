Minimal dynamic bindings for GLib, GObject, Gio, GTK4, and WebKitGTK.

Support for Libadwaita, Pango, GDK, and GSK later.

Work in progress.

Why?
- Initially saw as a challenge.
  - For another project that will depend on this.
  - Hand-written bindings, without the need of translating from text files and external tools.
  - No OOP-like wrappers for simplicity and ease of maintenance.
- Up-to-date GTK4/WebKitGTK bindings.
  - GtkD states supporting 3.24 while it loads gtk4, so I'm a little confused.

Notes:
- **Important**: Does not work with DMD (tested on 2.106.1+cc-13.3.0+linux64).
- **Important**: Bindings are added incrementally by hand. There are a lot of missing bindings.
- **Important**: Does not offer version target bindings.
  - e.g., stuff added/deprecated in certain versions, GTK 4.10 being rather a big update.
- Does not offer bindings to deprecated symbols.
- Does not offer OOP wrappers.
- Does not (yet) offer static bindings.
- GDK and GSK bindings are missing.
- Windows dependencies are available under Gvsbuild.

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
- `basic`: A button that prints "Hello" via from the command-line.
- `form`: A few tabs in a NoteBook, and some controls.
- `header`: HeaderBar with a Button and MenuButton, and vertical Paned.
- `viewlist`: ViewList using a GListStore and single-clicked activated items.
- `webkit`: Example with WebKitGTK.
  - By default, it connects to `https://example.org/`. You can specify a site using `--site=`.

## Usage

Until a stable release comes out, you can import this repo as a DUB package by commit.

In this example, replace `HASH` with the commit digest desired.

SDL:
```sdl
dependency "ddgtk4" repository="git+https://github.com/dd86k/ddgtk4.git" version="HASH"
```

JSON:
```json
"dependencies": {
  "ddgtk4": {
    "repository": "git+https://github.com/dd86k/ddgtk4.git",
    "version": "HASH"
  }
}
```

In your code, you will need to import the `ddgtk4` module
and call `loadgtk4all()` before using functions.

## Availability

GTK4 is generally available for most distros.

- Debian 11: Unavailable (PureOS 10 has GTK 4.6)
- Debian 12: GTK 4.8
- Debian 13: GTK 4.18
- Ubuntu 20.04 LTS: Unavailable
- Ubuntu 22.04 LTS: GTK 4.6
- Ubuntu 24.04 LTS: GTK 4.14
- Fedora 40: GTK 4.14
- Fedora 41: GTK 4.16
- Fedora 42: GTK 4.18
- RHEL 9: 4.12
- RHEL 10: 4.16

For gtk4-icon-browser, install `gtk-4-examples`.