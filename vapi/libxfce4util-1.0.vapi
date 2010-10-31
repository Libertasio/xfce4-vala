/* libxfce4util-1.0.vapi generated by vapigen-0.10, do not modify. */

[CCode (cprefix = "Xfce", lower_case_cprefix = "xfce_")]
namespace Xfce {
	[Compact]
	[CCode (cheader_filename = "libxfce4util/libxfce4util.h")]
	public class Kiosk {
		[CCode (has_construct_function = false)]
		public Kiosk (string module);
		public bool query (string capability);
	}
	[Compact]
	[CCode (cheader_filename = "libxfce4util/libxfce4util.h")]
	public class PosixSignalHandler {
		[CCode (cheader_filename = "libxfce4util/libxfce4util.h")]
		public delegate void Callback (int @signal);
		public static bool init () throws GLib.Error;
		public static void restore_handler (int @signal);
		public static bool set_handler (int @signal, Xfce.PosixSignalHandler.Callback handler) throws GLib.Error;
		public static void shutdown ();
	}
	[Compact]
	[CCode (free_function = "xfce_rc_close", cheader_filename = "libxfce4util/libxfce4util.h")]
	public class Rc {
		[CCode (cname = "xfce_rc_simple_open", has_construct_function = false)]
		public Rc (string filename, bool readonly);
		public void delete_entry (string key, bool global);
		public void delete_group (string group, bool global);
		public void flush ();
		[CCode (cname = "xfce_rc_config_open", has_construct_function = false)]
		public Rc.from_resource (Xfce.ResourceType type, string resource, bool readonly);
		public unowned string get_entries (string group);
		public unowned string get_group ();
		public unowned string get_groups ();
		public unowned string get_locale ();
		public bool has_entry (string key);
		public bool has_group (string group);
		public bool is_dirty ();
		public bool is_readonly ();
		public bool read_bool_entry (string key, bool fallback);
		public unowned string read_entry (string key, string fallback);
		public unowned string read_entry_untranslated (string key, string fallback);
		public int read_int_entry (string key, int fallback);
		public unowned string read_list_entry (string key, string delimiter);
		public void rollback ();
		public void set_group (string group);
		public void write_bool_entry (string key, bool value);
		public void write_entry (string key, string value);
		public void write_int_entry (string key, int value);
		public void write_list_entry (string key, string value, string separator);
	}
	[Compact]
	[CCode (cheader_filename = "libxfce4util/libxfce4util.h")]
	public class Resource {
		[CCode (array_length = false)]
		public static string[] dirs (Xfce.ResourceType type);
		public static unowned string lookup (Xfce.ResourceType type, string filename);
		[CCode (array_length = false)]
		public static string[] lookup_all (Xfce.ResourceType type, string filename);
		[CCode (array_length = false)]
		public static string[] match (Xfce.ResourceType type, string pattern, bool unique);
		public static unowned string save_location (Xfce.ResourceType type, string relpath, bool create);
	}
	[CCode (cprefix = "XFCE_LICENSE_TEXT_", cheader_filename = "libxfce4util/libxfce4util.h")]
	public enum LicenseTextType {
		BSD,
		GPL,
		LGPL
	}
	[CCode (cprefix = "XFCE_RESOURCE_", cheader_filename = "libxfce4util/libxfce4util.h")]
	public enum ResourceType {
		DATA,
		CONFIG,
		CACHE,
		ICONS,
		THEMES
	}
	[CCode (cheader_filename = "libxfce4util/libxfce4util.h")]
	public static unowned string get_license_text (Xfce.LicenseTextType type);
	[CCode (cname = "xfce_version_string", cheader_filename = "libxfce4util/libxfce4util.h")]
	public static unowned string get_version_string ();
	[CCode (cheader_filename = "libxfce4util/libxfce4util.h")]
	public static void textdomain (string package, string localedir, string? encoding = null);
}
