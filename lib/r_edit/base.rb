module REdit
  class Base < Wx::App
    class << self

      attr_accessor :app
      attr_accessor :buffers

      def start
        self.buffers = []
        self.app = REdit::Base.new
        self.app.main_loop
      end
    end

    def on_init
      main_frame = Wx::Frame.new nil, :title => "rEdit",:size => [ 800, 600 ]
      REdit::Gui::Menu.build(main_frame)
      Base.buffers << REdit::Gui::Buffer.new(main_frame)
      main_frame.show
    end
  end
end