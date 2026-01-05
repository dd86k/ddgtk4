module ddgtk4.adwaita.adwaita;

// https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1-latest/
// Libhandy is notably for GTK3
// Libadwaita has a migration guide

import ddloader;

public import ddgtk4.gobject.gsignal : g_signal_connect;
public import ddgtk4.gobject.gclosure : G_CALLBACK;
public import ddgtk4.gio.gapplication : G_APPLICATION, g_application_run;
public import ddgtk4.gtk.gtkapplication : GtkApplication, gtk_application_add_window, G_APPLICATION_DEFAULT_FLAGS;
public import ddgtk4.gtk.gtkapplicationwindow : gtk_application_window_new;
public import ddgtk4.gtk.gtklabel : gtk_label_new;
public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.gtk.gtkwindow;

public import ddgtk4.adwaita.application;

version (Windows)
{
    private immutable string[] libNamesAdwaita = [
        "adwaita-1-0.dll",
    ];
}
else version (OSX)
{
    private immutable string[] libNamesAdwaita = [
        "adwaita-1.0.dylib", // rough guess
    ];
}
else version (Posix)
{
    private immutable string[] libNamesAdwaita = [
        "libadwaita-1.so.0", // ubuntu
    ];
}

private __gshared DynamicLibrary libadwaita;

void loadadwaita()
{
    if (libNamesAdwaita.length == 0)
        throw new Exception("Unsupported platform");
    
    // Load libadwaita
    libadwaita = libraryLoad(libNamesAdwaita);
    
    // Load everything else because adwaita depends on these
    import ddgtk4.gio : loadgio;
    loadgio();
    import ddgtk4.gobject : loadgobject;
    loadgobject();
    //import ddgtk4.glib : loadglib;
    //loadglib();
    import ddgtk4.gtk : loadgtk4;
    loadgtk4();
    
    libraryBind(libadwaita, cast(void**)&adw_application_new, "adw_application_new");
}