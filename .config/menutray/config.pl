#!/usr/bin/perl

# menutray - configuration file
# This file will be updated automatically.
# Any additional comment and/or indentation will be lost.

=for comment

|| FILTERING
    | skip_filename_re    : Skip a .desktop file if its name matches the regex.
                            Name is from the last slash to the end. (e.g.: filename.desktop)
                            Example: qr/^(?:gimp|xterm)\b/,    # skips 'gimp' and 'xterm'

    | skip_entry          : Skip a destkop file if the value from a given key matches the regex.
                            Example: [
                                {key => 'Name', re => qr/(?:about|terminal)/i},
                                {key => 'Exec', re => qr/^xterm/},
                            ],

    | substitutions       : Substitute, by using a regex, in the values of the desktop files.
                            Example: [
                                {key => 'Exec', re => qr/xterm/, value => 'sakura'},
                                {key => 'Name', re => qr/^GNU I\w+ M\w+ P\w+/, value => 'GIMP'},
                            ],

|| ICON SETTINGS
    | icon_type           : Menu icon type (menu, dnd, small-toolbar, large-toolbar, button, dialog)
    | icon_size           : Icon size in pixels (only for absolute icon paths) (default: [16, 16])
    | missing_image       : Use this icon for missing icons (default: gtk-missing-image)

|| PATHS
    | desktop_files_paths   : Absolute paths which contain .desktop files.
                              Example: [
                                '/usr/share/applications',
                                "$ENV{HOME}/.local/share/applications",
                                glob("$ENV{HOME}/.local/share/applications/wine/Programs/*"),
                              ],

=cut

our $CONFIG = {
  "editor"              => "vim",
  "icon_size"           => [16, 16],
  "icon_type"           => "menu",
  "Linux::DesktopFiles" => {
                             desktop_files_paths     => [
                                                          "/usr/share/applications",
                                                          "/usr/local/share/applications",
                                                          "/usr/share/applications/kde4",
                                                          "$ENV{HOME}/.local/share/applications",
                                                        ],
                             keep_unknown_categories => 1,
                             skip_entry              => undef,
                             skip_filename_re        => undef,
                             substitutions           => undef,
                             terminal                => "urxvt",
                             terminalization_format  => "%s -e '%s'",
                             terminalize             => 1,
                             unknown_category_key    => "other",
                           },
  "menutray_icon"       => "start-here",
  "menutray_title"      => "menutray",
  "menutray_tooltip"    => "Applications",
  "missing_image"       => "gtk-missing-image",
  "tooltips"            => 1,
  "VERSION"             => 0.51,
}
