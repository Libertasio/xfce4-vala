/* libxfce4panel-1.0.vapi generated by vapigen-0.12, do not modify. */

[CCode (cprefix = "Xfce", lower_case_cprefix = "xfce_")]
namespace Xfce {
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public class ArrowButton : Gtk.ToggleButton, Atk.Implementor, Gtk.Buildable, Gtk.Activatable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ArrowButton (Gtk.ArrowType arrow_type);
		public Gtk.ArrowType get_arrow_type ();
		public bool get_blinking ();
		public void set_arrow_type (Gtk.ArrowType arrow_type);
		public void set_blinking (bool blinking);
		public Gtk.ArrowType arrow_type { get; set; }
		public virtual signal void arrow_type_changed (Gtk.ArrowType type);
	}
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public class HVBox : Gtk.Box, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		public Gtk.Orientation orientation;
		[CCode (cname = "xfce_hvbox_new", type = "GtkWidget*", has_construct_function = false)]
		public HVBox (Gtk.Orientation orientation, bool homogeneous, int spacing);
		[CCode (cname = "xfce_hvbox_get_orientation")]
		public Gtk.Orientation get_orientation ();
		[CCode (cname = "xfce_hvbox_set_orientation")]
		public void set_orientation (Gtk.Orientation orientation);
	}
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public class PanelImage : Gtk.Widget {
		[CCode (has_construct_function = false)]
		public PanelImage ();
		public void clear ();
		[CCode (has_construct_function = false)]
		public PanelImage.from_pixbuf (Gdk.Pixbuf pixbuf);
		[CCode (has_construct_function = false)]
		public PanelImage.from_source (string source);
		public void set_from_pixbuf (Gdk.Pixbuf pixbuf);
		public void set_from_source (string source);
	}
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public class PanelPlugin : Gtk.EventBox, Atk.Implementor, Gtk.Buildable, Xfce.PanelPluginProvider {
		[CCode (has_construct_function = false)]
		protected PanelPlugin ();
		public void add_action_widget (Gtk.Widget widget);
		public Gtk.ArrowType arrow_type ();
		public void block_autohide (bool blocked);
		public void block_menu ();
		[NoWrapper]
		public virtual void @construct ();
		public void focus_widget (Gtk.Widget widget);
		public unowned string get_arguments ();
		public unowned string get_comment ();
		public unowned string get_display_name ();
		public bool get_expand ();
		public bool get_locked ();
		public Gtk.Orientation get_orientation ();
		public unowned string get_property_base ();
		public Xfce.ScreenPosition get_screen_position ();
		public int get_size ();
		public int get_unique_id ();
		public unowned string lookup_rc_file ();
		public void menu_insert_item (Gtk.MenuItem item);
		public void menu_show_about ();
		public void menu_show_configure ();
		public static void position_menu (Gtk.Menu menu, int x, int y, bool push_in, void* panel_plugin);
		public void position_widget (Gtk.Widget menu_widget, Gtk.Widget attach_widget, int x, int y);
		public void register_menu (Gtk.Menu menu);
		public void remove ();
		public unowned string save_location (bool create);
		public void set_expand (bool expand);
		public void take_window (Gtk.Window window);
		public void unblock_menu ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] arguments { get; construct; }
		public string comment { get; construct; }
		public string display_name { get; construct; }
		public bool expand { get; set; }
		public string name { get; construct; }
		public Gtk.Orientation orientation { get; }
		public Xfce.ScreenPosition screen_position { get; }
		public int size { get; }
		public int unique_id { get; construct; }
		public virtual signal void about ();
		public virtual signal void configure_plugin ();
		public virtual signal void free_data ();
		public virtual signal void orientation_changed (Gtk.Orientation orientation);
		public virtual signal bool remote_event (string name, GLib.Value value);
		public virtual signal void removed ();
		public virtual signal void save ();
		public virtual signal void screen_position_changed (Xfce.ScreenPosition position);
		public virtual signal bool size_changed (int size);
	}
	[Compact]
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public class PanelTypeModule {
	}
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public interface PanelPluginProvider {
	}
	[CCode (cprefix = "XFCE_SCREEN_POSITION_", cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public enum ScreenPosition {
		NONE,
		NW_H,
		N,
		NE_H,
		NW_V,
		W,
		SW_V,
		NE_V,
		E,
		SE_V,
		SW_H,
		S,
		SE_H,
		FLOATING_H,
		FLOATING_V
	}
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", has_target = false)]
	public delegate bool PanelPluginCheck (Gdk.Screen screen);
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", has_target = false)]
	public delegate void PanelPluginFunc (Xfce.PanelPlugin plugin);
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h", has_target = false)]
	public delegate bool PanelPluginPreInit (int argc, string argv);
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public static unowned Gtk.Button panel_create_button ();
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public static unowned Gtk.ToggleButton panel_create_toggle_button ();
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public static unowned string panel_get_channel_name ();
	[CCode (cheader_filename = "libxfce4panel/libxfce4panel.h")]
	public static unowned Gdk.Pixbuf panel_pixbuf_from_source (string source, Gtk.IconTheme icon_theme, int size);
}
