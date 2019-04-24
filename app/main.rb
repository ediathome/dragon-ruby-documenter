# A helper module for DragonRuby
#
class DragonRubyDocumenter

  def dox args
    puts "DragonRubyDocumenter:: starting output…"

    logc = [
      { obj: args, comment: '**args**' },
      { obj: args.dragon, comment: '**args.dragon**' },
      { obj: args.game.new_entity(:doc_button), comment: '**args.game.new_entity** Methods of an entity object ' },
      { obj: $ffi, comment: '**$ffi**' },
      { obj: FFI::File.new, comment: '**FFI::File**'},
      { obj: args.game, comment: '**args.game**' },
      { obj: GC, comment: '**GC**'},
      { obj: args.grid, comment: '**args.grid**' },
      { obj: args.inputs, comment: '**args.inputs**' },
      { obj: $layout, comment: '**$layout**' },
      { obj: args.outputs, comment: '**args.outputs**' },
      { obj: args.passes, comment: '**args.passes**' }
    ]
    logc.each { |lo| log_object_methods lo }

    os_arr = []
    ObjectSpace.each_object do |obj|
      # This would be nicer with Regexp, but there seems to
      # be some kind of bug with String.match
      next if obj.to_s[0..1] == '#<'
      next if obj.to_s == 'DragonRubyDocumenter'
      next if obj.to_s == '#<Class:DragonRubyDocumenter>'
      if obj.is_a?(Class)
        os_arr << "* ```#{class_tree(obj).to_s}```"
      end
    end
    os_arr.sort!
    output[:objspace] << os_arr.join("\n") + "\n\n"

    flush_documentation
    true
  end

  private

  def md_file
    @md_file ||= init_md_file
  end

  def md_file_path
    "DragonRubyObjectMethods.md"
  end

  def class_tree(obj)
    rv = ""
    if obj.respond_to?(:superclass)
      rv += class_tree(obj.superclass.to_s) + "::"
    end
    rv += obj.to_s
    rv
  end

  def output
    @output ||= { objspace: "", short: "", full: "" }
  end

  def add_to_out(ostr)
    output[:short] << ostr
    output[:full] << ostr
  end

  def init_md_file
    File.delete(md_file_path) if File.exist?(md_file_path)
    File.open(md_file_path, "w")
  end

  # Call with a Hash
  # { obj: args, comment: '**args**' },
  def log_object_methods(thash)
    tobject = thash[:obj]
    puts "\tlog #{thash[:comment]}"

    full_methods  = tobject.methods(true).sort
    short_methods = tobject.methods(false).sort

    if tobject.class==OpenStructLite
      add_to_out "## OpenStructLite for #{thash[:comment]}"
    elsif tobject.class==BasicObject
      add_to_out "# BasicObject"
    else
      add_to_out "## Class: #{tobject.class}"
    end
    add_to_out "\n#{thash[:comment]}\n\n"

    # This could be done if we had the Method class
    # possibly via:
    # https://github.com/mruby/mruby/tree/master/mrbgems/mruby-method
    # m = tobject.instance_method(mn)
    # m.
    full_methods.each do |mn|
      next if mn.to_s==""
      next if mn.to_s=="documenter_button"
      output[:full] << "* ```#{mn.to_s}```\n"
    end
    short_methods.each do |mn|
      next if mn.to_s==""
      next if mn.to_s=="documenter_button"
      output[:short] << "* ```#{mn.to_s}```\n"
    end

    add_to_out "\n\n---\n\n"
  end

  def flush_documentation
    fout  = "# Global Object Space\n\n"  + output[:objspace]
    fout += "# Short\n\n" + output[:short]
    fout += "# Long\n\n" + output[:full]
    md_file.write(fout)
    puts "DragonRubyDocumenter: wrote documentation to '#{md_file_path}'"
  end
end

def $layout.background_color game
  [255, 255 , 255]
end

$docer = DragonRubyDocumenter.new

#
# Run the stuff
#
def tick args
  x, y, w, h = args.grid.w_half - 150 , args.grid.h_half, 300, 50

  documenter_button        ||= args.game.new_entity(:doc_button)
  documenter_button.label  ||= [x + w.half, y + h.half + 10, "Write Documentation", 1, 1]
  documenter_button.border ||= [x, y, w, h]

  args.outputs.labels << documenter_button.label
  args.outputs.borders << documenter_button.border

  if args.game.documenter_success 
    if args.game.documenter_success + 100 > args.game.tick_count
      documenter_success_label = args.game.new_entity(:success_label)
      documenter_success_label.label = [x + w.half, y + h.half - 50, "Wrote documentation...", 1, 1]
      args.outputs.labels << documenter_success_label.label
    else
      documenter_success_label = nil
      args.game.documenter_success = false
    end
  end

  if args.inputs.mouse.click && args.inputs.mouse.click.point.inside_rect?(documenter_button.border)
    if $docer.dox args
      args.game.documenter_success = args.game.tick_count
    else
      puts "Error of some kind"
    end
  end
end
