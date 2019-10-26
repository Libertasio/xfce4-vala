/* garcon-1.vapi generated by vapigen-0.34, do not modify. */

namespace Garcon {
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class Menu : GLib.Object, Garcon.MenuElement {
		[CCode (has_construct_function = false)]
		public Menu (GLib.File file);
		public void add_menu (Garcon.Menu submenu);
		[CCode (has_construct_function = false)]
		public Menu.applications ();
		[CCode (has_construct_function = false)]
		public Menu.for_path (string filename);
		public unowned Garcon.MenuDirectory get_directory ();
		public unowned GLib.List get_elements ();
		public unowned GLib.File get_file ();
		public unowned Garcon.MenuItemPool get_item_pool ();
		public unowned GLib.List get_items ();
		public unowned Garcon.Menu get_menu_with_name (string name);
		public unowned GLib.List get_menus ();
		public unowned Garcon.Menu get_parent ();
		public bool load (GLib.Cancellable? cancellable) throws GLib.Error;
		[NoAccessorMethod]
		public Garcon.MenuDirectory directory { owned get; set; }
		public GLib.File file { get; construct; }
		public virtual signal void directory_changed (Garcon.MenuDirectory p0, Garcon.MenuDirectory p1);
		public virtual signal void reload_required ();
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class MenuDirectory : GLib.Object {
		[CCode (has_construct_function = false)]
		public MenuDirectory (GLib.File file);
		public bool equal (Garcon.MenuDirectory other);
		public unowned string get_comment ();
		public unowned GLib.File get_file ();
		public bool get_hidden ();
		public unowned string get_icon_name ();
		public unowned string get_name ();
		public bool get_no_display ();
		public bool get_show_in_environment ();
		public bool get_visible ();
		public void set_comment (string comment);
		public void set_icon_name (string icon);
		public void set_name (string name);
		public void set_no_display (bool no_display);
		public string comment { get; set; }
		public GLib.File file { get; construct; }
		public string icon_name { get; set; }
		public string name { get; set; }
		public bool no_display { get; set; }
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class MenuItem : GLib.Object, Garcon.MenuElement {
		[CCode (has_construct_function = false)]
		public MenuItem (GLib.File file);
		public void decrement_allocated ();
		[CCode (has_construct_function = false)]
		public MenuItem.for_path (string filename);
		[CCode (has_construct_function = false)]
		public MenuItem.for_uri (string uri);
		public unowned Garcon.MenuItemAction get_action (string action_name);
		public unowned GLib.List get_actions ();
		public int get_allocated ();
		public unowned GLib.List get_categories ();
		public unowned string get_command ();
		public unowned string get_desktop_id ();
		public unowned GLib.File get_file ();
		public unowned string get_generic_name ();
		public bool get_hidden ();
		public unowned string get_path ();
		public unowned string get_try_exec ();
		public unowned string get_uri ();
		public bool has_action (string action_name);
		public bool has_category (string category);
		public void increment_allocated ();
		public bool only_show_in_environment ();
		public void @ref ();
		public bool reload (bool affects_the_outside) throws GLib.Error;
		public bool reload_from_file (GLib.File file, bool affects_the_outside) throws GLib.Error;
		public void set_action (string action_name, Garcon.MenuItemAction action);
		public void set_categories (GLib.List categories);
		public void set_command (string command);
		public void set_comment (string comment);
		public void set_desktop_id (string desktop_id);
		public void set_generic_name (string generic_name);
		public void set_hidden (bool hidden);
		public void set_icon_name (string icon_name);
		public void set_name (string name);
		public void set_no_display (bool no_display);
		public void set_path (string path);
		public void set_requires_terminal (bool requires_terminal);
		public void set_supports_startup_notification (bool supports_startup_notification);
		public void set_try_exec (string try_exec);
		public void unref ();
		public string command { get; set; }
		public string comment { get; set; }
		public string desktop_id { get; set; }
		public GLib.File file { get; construct; }
		public string generic_name { get; set; }
		public bool hidden { get; set; }
		public string icon_name { get; set; }
		public string name { get; set; }
		public bool no_display { get; set; }
		public string path { get; set; }
		[NoAccessorMethod]
		public bool requires_terminal { get; set; }
		[NoAccessorMethod]
		public bool supports_startup_notification { get; set; }
		public string try_exec { get; set; }
		public virtual signal void changed ();
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class MenuItemAction : GLib.Object {
		[CCode (has_construct_function = false)]
		public MenuItemAction ();
		[NoWrapper]
		public virtual void changed ();
		public unowned string get_command ();
		public unowned string get_icon_name ();
		public unowned string get_name ();
		public void @ref ();
		public void set_command (string command);
		public void set_icon_name (string icon_name);
		public void set_name (string name);
		public void unref ();
		public string command { get; set; }
		public string icon_name { get; set; }
		public string name { get; set; }
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class MenuItemCache : GLib.Object {
		[CCode (has_construct_function = false)]
		protected MenuItemCache ();
		public void @foreach (GLib.HFunc func);
		public static unowned Garcon.MenuItemCache get_default ();
		public void invalidate ();
		public void invalidate_file (GLib.File file);
		public unowned Garcon.MenuItem lookup (string uri, string desktop_id);
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class MenuItemPool : GLib.Object {
		[CCode (has_construct_function = false)]
		public MenuItemPool ();
		public void apply_exclude_rule (GLib.Node node);
		public void clear ();
		public void @foreach (GLib.HFunc func);
		public bool get_empty ();
		public void insert (Garcon.MenuItem item);
		public unowned Garcon.MenuItem lookup (string desktop_id);
		public unowned Garcon.MenuItem lookup_file (GLib.File file);
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	[Compact]
	public class MenuItemPoolClass {
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class MenuMerger : GLib.Object, Garcon.MenuTreeProvider {
		[CCode (has_construct_function = false)]
		public MenuMerger (Garcon.MenuTreeProvider provider);
		public bool run (GLib.List merge_files, GLib.List merge_dirs, GLib.Cancellable cancellable) throws GLib.Error;
		[NoAccessorMethod]
		public Garcon.MenuTreeProvider tree_provider { owned get; construct; }
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class MenuNode : GLib.Object {
		[CCode (has_construct_function = false)]
		public MenuNode (Garcon.MenuNodeType node_type);
		public unowned Garcon.MenuNode copy ();
		public static unowned Garcon.MenuNode create (Garcon.MenuNodeType node_type, ...);
		public unowned string get_merge_file_filename ();
		public Garcon.MenuMergeFileType get_merge_file_type ();
		public Garcon.MenuNodeType get_node_type ();
		public unowned string get_string ();
		public void set_merge_file_filename (string filename);
		public void set_merge_file_type (Garcon.MenuMergeFileType type);
		public void set_string (string value);
		public static int tree_compare (GLib.Node tree, GLib.Node other_tree);
		public static unowned GLib.Node tree_copy (GLib.Node tree);
		public static void tree_free (GLib.Node tree);
		public static void tree_free_data (GLib.Node tree);
		public static bool tree_get_boolean_child (GLib.Node tree, Garcon.MenuNodeType type);
		public static unowned GLib.Node tree_get_child_node (GLib.Node tree, Garcon.MenuNodeType type, bool reverse);
		public static unowned GLib.List tree_get_child_nodes (GLib.Node tree, Garcon.MenuNodeType type, bool reverse);
		public static Garcon.MenuLayoutMergeType tree_get_layout_merge_type (GLib.Node tree);
		public static unowned string tree_get_merge_file_filename (GLib.Node tree);
		public static Garcon.MenuMergeFileType tree_get_merge_file_type (GLib.Node tree);
		public static Garcon.MenuNodeType tree_get_node_type (GLib.Node tree);
		public static unowned string tree_get_string (GLib.Node tree);
		public static unowned string tree_get_string_child (GLib.Node tree, Garcon.MenuNodeType type);
		public static unowned GLib.List tree_get_string_children (GLib.Node tree, Garcon.MenuNodeType type, bool reverse);
		public static bool tree_rule_matches (GLib.Node tree, Garcon.MenuItem item);
		public static void tree_set_merge_file_filename (GLib.Node tree, string filename);
		public static void tree_set_string (GLib.Node tree, string value);
		[NoAccessorMethod]
		public Garcon.MenuNodeType node_type { get; set; }
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	[Compact]
	public class MenuNodeClass {
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	[Compact]
	public class MenuNodeData {
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class MenuParser : GLib.Object, Garcon.MenuTreeProvider {
		[CCode (has_construct_function = false)]
		public MenuParser (GLib.File file);
		public bool run (GLib.Cancellable cancellable) throws GLib.Error;
		[NoAccessorMethod]
		public GLib.File file { owned get; construct; }
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public class MenuSeparator : GLib.Object, Garcon.MenuElement {
		[CCode (has_construct_function = false)]
		protected MenuSeparator ();
		public static unowned Garcon.MenuSeparator get_default ();
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public interface MenuElement : GLib.Object {
		public abstract bool equal (Garcon.MenuElement b);
		public abstract unowned string get_comment ();
		public abstract unowned string get_icon_name ();
		public abstract unowned string get_name ();
		public abstract bool get_no_display ();
		public abstract bool get_show_in_environment ();
		public abstract bool get_visible ();
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public interface MenuTreeProvider : GLib.Object {
		public abstract unowned GLib.File get_file ();
		public abstract unowned GLib.Node get_tree ();
	}
	[CCode (cheader_filename = "garcon/garcon.h", cprefix = "GARCON_MENU_LAYOUT_MERGE_", has_type_id = false)]
	public enum MenuLayoutMergeType {
		MENUS,
		FILES,
		ALL
	}
	[CCode (cheader_filename = "garcon/garcon.h", cprefix = "GARCON_MENU_MERGE_FILE_", has_type_id = false)]
	public enum MenuMergeFileType {
		PATH,
		PARENT
	}
	[CCode (cheader_filename = "garcon/garcon.h", cprefix = "GARCON_MENU_NODE_TYPE_")]
	public enum MenuNodeType {
		INVALID,
		MENU,
		NAME,
		DIRECTORY,
		DIRECTORY_DIR,
		DEFAULT_DIRECTORY_DIRS,
		APP_DIR,
		DEFAULT_APP_DIRS,
		ONLY_UNALLOCATED,
		NOT_ONLY_UNALLOCATED,
		DELETED,
		NOT_DELETED,
		INCLUDE,
		EXCLUDE,
		ALL,
		FILENAME,
		CATEGORY,
		OR,
		AND,
		NOT,
		MOVE,
		OLD,
		NEW,
		DEFAULT_LAYOUT,
		LAYOUT,
		MENUNAME,
		SEPARATOR,
		MERGE,
		MERGE_FILE,
		MERGE_DIR,
		DEFAULT_MERGE_DIRS
	}
	[CCode (cheader_filename = "garcon/garcon.h")]
	public const string ENVIRONMENT_XFCE;
	[CCode (cheader_filename = "garcon/garcon.h")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "garcon/garcon.h")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "garcon/garcon.h")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "garcon/garcon.h")]
	public static unowned string check_version (uint required_major, uint required_minor, uint required_micro);
	[CCode (cheader_filename = "garcon/garcon.h")]
	public static unowned string config_build_paths (string filename);
	[CCode (cheader_filename = "garcon/garcon.h")]
	public static unowned string config_lookup (string filename);
	[CCode (cheader_filename = "garcon/garcon.h")]
	public static unowned string get_environment ();
	[CCode (cheader_filename = "garcon/garcon.h")]
	public static void marshal_VOID__OBJECT_OBJECT (GLib.Closure closure, GLib.Value return_value, uint n_param_values, GLib.Value param_values, void* invocation_hint, void* marshal_data);
	[CCode (cheader_filename = "garcon/garcon.h")]
	public static void set_environment (string env);
	[CCode (cheader_filename = "garcon/garcon.h")]
	public static void set_environment_xdg (string fallback_env);
}
