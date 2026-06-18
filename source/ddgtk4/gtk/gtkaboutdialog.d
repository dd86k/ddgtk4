module ddgtk4.gtk.gtkaboutdialog;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.glib.gtypes : gboolean;

alias GtkLicense = int;
enum : GtkLicense
{
    GTK_LICENSE_UNKNOWN,
    GTK_LICENSE_CUSTOM,

    GTK_LICENSE_GPL_2_0,
    GTK_LICENSE_GPL_3_0,

    GTK_LICENSE_LGPL_2_1,
    GTK_LICENSE_LGPL_3_0,

    GTK_LICENSE_BSD,
    GTK_LICENSE_MIT_X11,

    GTK_LICENSE_ARTISTIC,

    GTK_LICENSE_GPL_2_0_ONLY,
    GTK_LICENSE_GPL_3_0_ONLY,
    GTK_LICENSE_LGPL_2_1_ONLY,
    GTK_LICENSE_LGPL_3_0_ONLY,

    GTK_LICENSE_AGPL_3_0,
    GTK_LICENSE_AGPL_3_0_ONLY,

    GTK_LICENSE_BSD_3,
    GTK_LICENSE_APACHE_2_0,
    GTK_LICENSE_MPL_2_0,
    GTK_LICENSE_0BSD
}

struct GtkAboutDialog;

// Macros
pragma(inline, true)
{
    GtkAboutDialog* GTK_ABOUT_DIALOG(void *o)
    {
        return cast(GtkAboutDialog*)o;
    }
}

// Functions
extern (C)
{
    alias A_gtk_about_dialog_new = GtkWidget* function();
    alias A_gtk_about_dialog_set_comments = void function(GtkAboutDialog*, const(char)*);
    alias A_gtk_about_dialog_set_version = void function(GtkAboutDialog*, const(char)*);
    alias A_gtk_about_dialog_set_website = void function(GtkAboutDialog*, const(char)*);
    alias A_gtk_about_dialog_set_website_label = void function(GtkAboutDialog*, const(char)*);
    alias A_gtk_about_dialog_set_copyright = void function(GtkAboutDialog*, const(char)*);
    alias A_gtk_about_dialog_set_license = void function(GtkAboutDialog*, const(char)*);
    alias A_gtk_about_dialog_set_authors = void function(GtkAboutDialog*, const(char)**);
    alias A_gtk_about_dialog_set_documenters = void function(GtkAboutDialog*, const(char)**);
    alias A_gtk_about_dialog_set_artists = void function(GtkAboutDialog*, const(char)**);
    alias A_gtk_about_dialog_set_translator_credits = void function(GtkAboutDialog*, const(char)*);
    alias A_gtk_about_dialog_set_license_type = void function(GtkAboutDialog*, GtkLicense);
    alias A_gtk_about_dialog_set_program_name = void function(GtkAboutDialog*, const(char)*);
    alias A_gtk_about_dialog_set_system_information = void function(GtkAboutDialog*, const(char)*);
    alias A_gtk_about_dialog_set_wrap_license = void function(GtkAboutDialog*, gboolean);
    // Convenience function
    alias A_gtk_show_about_dialog = void function(GtkWidget *parent, const(char) *first, ...);
}

__gshared
{
    A_gtk_about_dialog_new gtk_about_dialog_new;
    A_gtk_about_dialog_set_comments gtk_about_dialog_set_comments;
    A_gtk_about_dialog_set_version gtk_about_dialog_set_version;
    A_gtk_about_dialog_set_website gtk_about_dialog_set_website;
    A_gtk_about_dialog_set_website_label gtk_about_dialog_set_website_label;
    A_gtk_about_dialog_set_copyright gtk_about_dialog_set_copyright;
    A_gtk_about_dialog_set_license gtk_about_dialog_set_license;
    A_gtk_about_dialog_set_authors gtk_about_dialog_set_authors;
    A_gtk_about_dialog_set_documenters gtk_about_dialog_set_documenters;
    A_gtk_about_dialog_set_artists gtk_about_dialog_set_artists;
    A_gtk_about_dialog_set_translator_credits gtk_about_dialog_set_translator_credits;
    A_gtk_about_dialog_set_license_type gtk_about_dialog_set_license_type;
    A_gtk_about_dialog_set_program_name gtk_about_dialog_set_program_name;
    A_gtk_about_dialog_set_system_information gtk_about_dialog_set_system_information;
    A_gtk_about_dialog_set_wrap_license gtk_about_dialog_set_wrap_license;
    A_gtk_show_about_dialog gtk_show_about_dialog;
}