module ddgtk4.gtk.gtksnapshot;

struct GtkSnapshot;

// Macros
pragma(inline, true)
{
    GtkSnapshot* GTK_SNAPSHOT(void *o)
    {
        return cast(GtkSnapshot*)o;
    }
}

// Some temp forward GDK related declarations
struct GdkRGBA
{
    float red;
    float green;
    float blue;
    float alpha;
}

struct graphene_point_t
{
    float x;
    float y;
}

struct graphene_size_t
{
    float width;
    float height;
}

struct graphene_rect_t
{
    graphene_point_t origin;
    graphene_size_t size;
}

// Functions
extern (C)
{
    alias A_gtk_snapshot_append_color = void function(GtkSnapshot* snapshot, const(GdkRGBA)* color, const(graphene_rect_t)* bounds);
}

__gshared
{
    A_gtk_snapshot_append_color gtk_snapshot_append_color;
}
