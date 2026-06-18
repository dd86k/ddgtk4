module ddgtk4.gtk.gtkfiledialog;

public import ddgtk4.glib.gtypes : gboolean, gpointer;
public import ddgtk4.glib.gerror : GError;
public import ddgtk4.gobject.gobject : GObject;
public import ddgtk4.gio.giotypes :
    GAsyncResult, GAsyncReadyCallback, GCancellable, GFile;
public import ddgtk4.gio.glistmodel : GListModel;
public import ddgtk4.gtk.gtkwindow : GtkWindow;

struct GtkFileDialog;
struct GtkFileFilter;

// Macros
pragma(inline, true)
{
    GtkFileDialog* GTK_FILE_DIALOG(void *o)
    {
        return cast(GtkFileDialog*)o;
    }
}

// Functions
extern (C)
{
    alias A_gtk_file_dialog_new = GtkFileDialog* function();
    alias A_gtk_file_dialog_get_title = const(char)* function(GtkFileDialog*);
    alias A_gtk_file_dialog_set_title = void function(GtkFileDialog*, const(char)*);
    alias A_gtk_file_dialog_get_modal = gboolean function(GtkFileDialog*);
    alias A_gtk_file_dialog_set_modal = void function(GtkFileDialog*, gboolean);
    alias A_gtk_file_dialog_get_filters = GListModel* function(GtkFileDialog*);
    alias A_gtk_file_dialog_set_filters = void function(GtkFileDialog*, GListModel*);
    alias A_gtk_file_dialog_get_default_filter = GtkFileFilter* function(GtkFileDialog*);
    alias A_gtk_file_dialog_set_default_filter = void function(GtkFileDialog*, GtkFileFilter*);
    alias A_gtk_file_dialog_get_initial_folder = GFile* function(GtkFileDialog*);
    alias A_gtk_file_dialog_set_initial_folder = void function(GtkFileDialog*, GFile*);
    alias A_gtk_file_dialog_get_initial_name = const(char)* function(GtkFileDialog*);
    alias A_gtk_file_dialog_set_initial_name = void function(GtkFileDialog*, const(char)*);
    alias A_gtk_file_dialog_get_initial_file = GFile* function(GtkFileDialog*);
    alias A_gtk_file_dialog_set_initial_file = void function(GtkFileDialog*, GFile*);
    alias A_gtk_file_dialog_get_accept_label = const(char)* function(GtkFileDialog*);
    alias A_gtk_file_dialog_set_accept_label = void function(GtkFileDialog*, const(char)*);

    alias A_gtk_file_dialog_open = void function(GtkFileDialog*, GtkWindow*, GCancellable*, GAsyncReadyCallback, gpointer);
    alias A_gtk_file_dialog_open_finish = GFile* function(GtkFileDialog*, GAsyncResult*, GError**);

    alias A_gtk_file_dialog_select_folder = void function(GtkFileDialog*, GtkWindow*, GCancellable*, GAsyncReadyCallback, gpointer);
    alias A_gtk_file_dialog_select_folder_finish = GFile* function(GtkFileDialog*, GAsyncResult*, GError**);

    alias A_gtk_file_dialog_save = void function(GtkFileDialog*, GtkWindow*, GCancellable*, GAsyncReadyCallback, gpointer);
    alias A_gtk_file_dialog_save_finish = GFile* function(GtkFileDialog*, GAsyncResult*, GError**);

    alias A_gtk_file_dialog_open_multiple = void function(GtkFileDialog*, GtkWindow*, GCancellable*, GAsyncReadyCallback, gpointer);
    alias A_gtk_file_dialog_open_multiple_finish = GListModel* function(GtkFileDialog*, GAsyncResult*, GError**);

    alias A_gtk_file_dialog_select_multiple_folders = void function(GtkFileDialog*, GtkWindow*, GCancellable*, GAsyncReadyCallback, gpointer);
    alias A_gtk_file_dialog_select_multiple_folders_finish = GListModel* function(GtkFileDialog*, GAsyncResult*, GError**);
}

__gshared
{
    A_gtk_file_dialog_new gtk_file_dialog_new;
    A_gtk_file_dialog_get_title gtk_file_dialog_get_title;
    A_gtk_file_dialog_set_title gtk_file_dialog_set_title;
    A_gtk_file_dialog_get_modal gtk_file_dialog_get_modal;
    A_gtk_file_dialog_set_modal gtk_file_dialog_set_modal;
    A_gtk_file_dialog_get_filters gtk_file_dialog_get_filters;
    A_gtk_file_dialog_set_filters gtk_file_dialog_set_filters;
    A_gtk_file_dialog_get_default_filter gtk_file_dialog_get_default_filter;
    A_gtk_file_dialog_set_default_filter gtk_file_dialog_set_default_filter;
    A_gtk_file_dialog_get_initial_folder gtk_file_dialog_get_initial_folder;
    A_gtk_file_dialog_set_initial_folder gtk_file_dialog_set_initial_folder;
    A_gtk_file_dialog_get_initial_name gtk_file_dialog_get_initial_name;
    A_gtk_file_dialog_set_initial_name gtk_file_dialog_set_initial_name;
    A_gtk_file_dialog_get_initial_file gtk_file_dialog_get_initial_file;
    A_gtk_file_dialog_set_initial_file gtk_file_dialog_set_initial_file;
    A_gtk_file_dialog_get_accept_label gtk_file_dialog_get_accept_label;
    A_gtk_file_dialog_set_accept_label gtk_file_dialog_set_accept_label;
    A_gtk_file_dialog_open gtk_file_dialog_open;
    A_gtk_file_dialog_open_finish gtk_file_dialog_open_finish;
    A_gtk_file_dialog_select_folder gtk_file_dialog_select_folder;
    A_gtk_file_dialog_select_folder_finish gtk_file_dialog_select_folder_finish;
    A_gtk_file_dialog_save gtk_file_dialog_save;
    A_gtk_file_dialog_save_finish gtk_file_dialog_save_finish;
    A_gtk_file_dialog_open_multiple gtk_file_dialog_open_multiple;
    A_gtk_file_dialog_open_multiple_finish gtk_file_dialog_open_multiple_finish;
    A_gtk_file_dialog_select_multiple_folders gtk_file_dialog_select_multiple_folders;
    A_gtk_file_dialog_select_multiple_folders_finish gtk_file_dialog_select_multiple_folders_finish;
}
