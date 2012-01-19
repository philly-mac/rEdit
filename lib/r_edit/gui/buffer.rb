module REdit
  module Gui
    class Buffer

      class << self

        attr_accessor :frame
        attr_accessor :notebook
        attr_accessor :untitled_index

        frame = nil
        notebook = nil

        def build(frame)
          self.untitled_index = 1
          self.notebook = Wx::Notebook.new(self.frame, :size => ::Wx::Size.new(800,600))
        end

        def increase_index(by = 1)
          Buffer.untitled_index += by
        end

        def decrease_index(by = 1)
          Buffer.untitled_index -= by
        end
      end

      attr_accessor :text_area

      def initialize(frame, file_name = nil)
        Buffer.frame = frame if !Buffer.frame
        Buffer.build(Buffer.frame) if !Buffer.notebook
        self.text_area = ::Wx::StyledTextCtrl.new(Buffer.notebook)
        Buffer.notebook.add_page text_area, "Untitled-#{Buffer.untitled_index}"
        Buffer.increase_index
        self
      end

    end
  end
end