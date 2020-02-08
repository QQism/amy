require "amy/version"
require "curses"

module Amy
  class Error < StandardError; end
  # Your code goes here...
  class Main
    def initialize
      Curses.init_screen

      my_str = "Hello WORLD!!!"
      height, width = 12, my_str.length + 10

      top, left = (Curses.lines - height) / 2, (Curses.cols - width) / 2
      # bwin = Curses::Window.new(height, width, top, left)
      bwin = Curses::Window.new(10, 10, 10, 10)
      # bwin.box("\\", "/")
      bwin.refresh

      bwin.getch
      bwin.close

      # win = bwin.subwin(height - 4, width - 4, top + 2, left + 2)
      # win.setpos(0, 0)
      # win.addstr(my_str)

      # win << "OH Really?"
      # win << "YES " + my_str
      # win.refresh
      # win.getch
      # win.close

      Curses.close_screen
    end
  end
end
