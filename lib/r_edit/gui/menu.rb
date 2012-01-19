module REdit
  module Gui
    class Menu

      class << self

        attr_accessor :frame

        def build(frame)
          self.frame = frame
          menu_bar = Wx::MenuBar.new
          menu_bar.append file_menu,   'menu_item.file.title'.t
          menu_bar.append edit_menu,   'menu_item.edit.title'.t
          menu_bar.append search_menu, 'menu_item.search.title'.t
          menu_bar.append help_menu,   'menu_item.about.title'.t
          frame.menu_bar = menu_bar
        end

        def file_menu
          menu = Wx::Menu.new
          menu.append(Wx::ID_NEW,    'menu_item.file.label.new'.t,     'menu_item.file.tool_tip.new'.t)
          menu.append(Wx::ID_OPEN,   'menu_item.file.label.open'.t,    'menu_item.file.tool_tip.open'.t)
          menu.append(Wx::ID_SAVE,   'menu_item.file.label.save'.t,    'menu_item.file.tool_tip.save'.t)
          menu.append(Wx::ID_SAVEAS, 'menu_item.file.label.save_as'.t, 'menu_item.file.tool_tip.save_as'.t)
          menu.append(Wx::ID_EXIT,   'menu_item.file.label.exit'.t,    'menu_item.file.tool_tip.exit'.t)

          frame.evt_menu(Wx::ID_NEW)    { new     }
          frame.evt_menu(Wx::ID_OPEN)   { open    }
          frame.evt_menu(Wx::ID_SAVE)   { save    }
          frame.evt_menu(Wx::ID_SAVEAS) { save_as }
          frame.evt_menu(Wx::ID_EXIT)   { exit    }
          menu
        end

        def edit_menu
          menu = Wx::Menu.new
          menu.append(Wx::ID_UNDO,  'menu_item.edit.label.undo'.t,  'menu_item.edit.tool_tip.undo'.t)
          menu.append(Wx::ID_REDO,  'menu_item.edit.label.redo'.t,  'menu_item.edit.tool_tip.redo'.t)
          menu.append(Wx::ID_CUT,   'menu_item.edit.label.cut'.t,   'menu_item.edit.tool_tip.cut'.t)
          menu.append(Wx::ID_COPY,  'menu_item.edit.label.copy'.t,  'menu_item.edit.tool_tip.copy'.t)
          menu.append(Wx::ID_PASTE, 'menu_item.edit.label.paste'.t, 'menu_item.edit.tool_tip.paste'.t)

          frame.evt_menu(Wx::ID_UNDO)  { undo    }
          frame.evt_menu(Wx::ID_REDO)  { redo_it }
          frame.evt_menu(Wx::ID_CUT)   { cut     }
          frame.evt_menu(Wx::ID_COPY)  { copy    }
          frame.evt_menu(Wx::ID_PASTE) { paste   }

          menu
        end

        def search_menu
          menu = Wx::Menu.new
          menu.append(Wx::ID_FIND, 'menu_item.search.label.find'.t, 'menu_item.search.tool_tip.find'.t)

          frame.evt_menu(Wx::ID_FIND) { find }

          menu
        end

        def help_menu
          menu = Wx::Menu.new
          menu.append(Wx::ID_HELP,  'menu_item.about.label.help'.t, 'menu_item.about.tool_tip.help'.t)
          menu.append(Wx::ID_ABOUT, 'menu_item.about.label.about'.t,'menu_item.about.tool_tip.about'.t)

          frame.evt_menu(Wx::ID_HELP)  { help }
          frame.evt_menu(Wx::ID_ABOUT) { about }

          menu
        end

        private

        # File menu
        def new
          REdit::Gui::Buffer.new(self.frame)
        end

        def open
          puts "open file"
          fd = Wx::FileDialog.new(
            self.frame,
            :message => "Choose a file",
            :wildcard => "*"
          )

          fd.show_modal
        end

        def save
          comming_soon
        end

        def save_as
          comming_soon
        end

        def exit
          comming_soon
        end

        def help
          comming_soon
        end

        # Edit menu
        def undo
          comming_soon
        end

        def redo_it
          comming_soon
        end

        def cut
          comming_soon
        end

        def copy
          comming_soon
        end

        def paste
          comming_soon
        end

        # Search menu

        def find
          comming_soon
        end

        # Help menu
        def help
          comming_soon
        end

        def about
          Wx::about_box(
            :name => "rEdit",
            :version     => "1.0",
            :description => "A text editor written in ruby",
            :developers  => ['Philip MacIver']
          )
        end

        def comming_soon
          cs = Wx::MessageDialog.new(frame, "This feature is not implemented yet.", "Coming Soon")
          cs.show_modal
        end
      end
    end
  end
end
