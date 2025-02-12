module ddgtk4.glib.gvarianttype;

struct GVariantType;

/*
private
{
    alias gvartype = const(GVariantType*);
    template GVARTYPE(string s)
    {
        enum gvartype GVARTYPE = cast(gvartype)s.ptr;
    }
}

immutable gvartype G_VARIANT_TYPE_BOOLEAN   = GVARTYPE!"b";
immutable gvartype G_VARIANT_TYPE_BYTE      = GVARTYPE!"y";
immutable gvartype G_VARIANT_TYPE_INT16     = GVARTYPE!"n";
immutable gvartype G_VARIANT_TYPE_UINT16    = GVARTYPE!"q";
immutable gvartype G_VARIANT_TYPE_INT32     = GVARTYPE!"i";
immutable gvartype G_VARIANT_TYPE_UINT32    = GVARTYPE!"u";
immutable gvartype G_VARIANT_TYPE_INT64     = GVARTYPE!"x";
immutable gvartype G_VARIANT_TYPE_UINT64    = GVARTYPE!"t";
immutable gvartype G_VARIANT_TYPE_DOUBLE    = GVARTYPE!"d";
immutable gvartype G_VARIANT_TYPE_STRING    = GVARTYPE!"s";
immutable gvartype G_VARIANT_TYPE_OBJECT_PATH   = GVARTYPE!"o";
immutable gvartype G_VARIANT_TYPE_SIGNATURE     = GVARTYPE!"g";
immutable gvartype G_VARIANT_TYPE_VARIANT   = GVARTYPE!"v";
immutable gvartype G_VARIANT_TYPE_HANDLE    = GVARTYPE!"h";
immutable gvartype G_VARIANT_TYPE_UNIT      = GVARTYPE!"()";
immutable gvartype G_VARIANT_TYPE_ANY       = GVARTYPE!"*";
immutable gvartype G_VARIANT_TYPE_BASIC     = GVARTYPE!"?";
immutable gvartype G_VARIANT_TYPE_MAYBE     = GVARTYPE!"m*";
immutable gvartype G_VARIANT_TYPE_ARRAY     = GVARTYPE!"a*";
immutable gvartype G_VARIANT_TYPE_TUPLE     = GVARTYPE!"r";
immutable gvartype G_VARIANT_TYPE_DICT_ENTRY     = GVARTYPE!"{?*}";
immutable gvartype G_VARIANT_TYPE_DICTIONARY     = GVARTYPE!"a{?*}";
immutable gvartype G_VARIANT_TYPE_STRING_ARRAY     = GVARTYPE!"as";
immutable gvartype G_VARIANT_TYPE_OBJECT_PATH_ARRAY     = GVARTYPE!"ao";
immutable gvartype G_VARIANT_TYPE_BYTESTRING     = GVARTYPE!"ay";
immutable gvartype G_VARIANT_TYPE_BYTESTRING_ARRAY     = GVARTYPE!"aay";
immutable gvartype G_VARIANT_TYPE_VARDICT     = GVARTYPE!"a{sv}";
*/