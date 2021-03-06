# A helper module for DragonRuby
#
class DragonRubyDocumenter

  MD_OUTPUT_DIR = 'output_md'
  PDF_OUTPUT_DIR = 'output_pdf'

  def dox args
    puts "DragonRubyDocumenter:: starting output…"

    #
    # Initialize stuff here
    #
    # args.outputs.sounds << "resources/beep.wav"
    fd = IO.sysopen("/dev/tty", "w")
    tio = IO.new(fd,"w")

    logc = [
      { obj: args, comment: '*args*' },
      { obj: args.dragon, comment: '*args.dragon*' },
      { obj: args.dragon.root, comment: '*args.dragon.root*' },
      { obj: args.state.new_entity(:doc_button), comment: '*args.state.new_entity* Methods of an entity object ' },
      { obj: $ffi, comment: '*$ffi*' },
      { obj: FFI::File.new, comment: '*FFI::File*'},
      { obj: args.state, comment: '*args.state*' },
      { obj: GC, comment: '*GC*'},
      { obj: args.grid, comment: '*args.grid*' },
      # IO stuff
      { obj: tio, comment: '*IO.new(IO.sysopen("/dev/tty", "w"), "w")*' },
      { obj: File.open('tmp.test', "w"), comment: '*File.open*' },

      { obj: $layout, comment: '*$layout*' },
      { obj: args.outputs, comment: '*args.outputs*' },
      # Sound is currently not working
      # { obj: Sound.new('resources/beep.wav'), comment: '*args.outputs.sounds.first* ' },
      { obj: args.passes, comment: '*args.passes*' },
      # Inputs
      { obj: args.inputs, comment: '*args.inputs*' },
      { obj: args.inputs.controller_one, comment: '*args.inputs.controller_one*'},
      { obj: args.inputs.controller_two, comment: '*args.inputs.controller_two*'},
      { obj: args.inputs.controllers, comment: '*args.inputs.controllers*'},
      { obj: args.inputs.keyboard, comment: '*args.inputs.keyboard*'},
      { obj: args.inputs.mouse, comment: '*args.inputs.mouse*'}
    ]
    logc.each { |lo| log_object_methods lo }

    puts "completed logging object methods"

    os_arr = []
    ObjectSpace.each_object do |obj|
    #   # This would be nicer with Regexp, but there seems to
    #   # be some kind of bug with String.match
    #   next if obj.to_s[0..1] == '#<'
    #   next if obj.to_s == 'DragonRubyDocumenter'
    #   next if obj.to_s == '#<Class:DragonRubyDocumenter>'
    # 
    #   puts "looping ObjectSpace class: #{obj.class} for #{obj.to_s[0..50]}"
      # if obj.is_a?(Class)
      #   os_arr << "* ```#{class_tree(obj).to_s}```"
      # end
    end
    os_arr.sort!
    # output[:objspace] << os_arr.join("\n") + "\n\n"
    
    puts "flushing documentation"
    flush_documentation
    true
  end

  private

  def md_file(fname)
    @md_file ||= Hash.new
    @md_file[fname] ||= md_file_init(fname)
    @md_file[fname]
  end

  def md_file_init(nfilepath)
    nfilepath = "#{MD_OUTPUT_DIR}/#{nfilepath}"
    File.delete(nfilepath) if File.exist?(nfilepath)
    File.open(nfilepath, "w")
  end

  def class_tree(obj)
    rv = ""
    if obj.respond_to?(:superclass) && obj.superclass.to_s != ''
      rv += class_tree(obj.superclass.to_s) + "::"
    end
    rv += obj.to_s
    rv
  end

  def output
    @output ||= { objspace: "", short: "", full: "", index: ""}
  end

  def add_to_out(ostr)
    output[:short] << ostr
    output[:full] << ostr
  end


  # Call with a Hash
  # { obj: args, comment: '**args**' },
  def log_object_methods(thash)
    tobject = thash[:obj]
    puts "\tlog #{thash[:comment]}"

    full_methods  = tobject.methods(true).sort
    short_methods = tobject.methods(false).sort

    if tobject.class==BasicObject
      add_to_out "### BasicObject"
    else
      add_to_out "### Class: #{class_tree(tobject.class).to_s}"
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
    add_to_out "\n[Top](#top)"
    add_to_out "\n\n---\n\n"
  end

  def output_headers
    hs = Hash.new
    # hs[:objspace]   = "Global Object Space"
    hs[:short]      = "Short (excluding inherited methods)"
    hs[:full]       = "Full (including inherited methods)"
    hs[:index]      = "Index"
    hs
  end

  def nav
    return @nav unless @nav.nil?
    @nav = "# DragonRubyGTK - Class dumps\n{:.no_toc}\n"
    output.each do |k, v| 
      @nav += "* [#{k}](#{k}.html)\n"
    end
    @nav += "\n\n"
    @nav
  end

  def md_toc
    "\n* A markdown unordered list which will be replaced with the ToC, excluding the from above\n{:toc}\n\n"
  end

  def flush_documentation
    full_contents = ""
    output.each do |k, v|
      heading = "## #{output_headers[k]}"
      unless k==:index
        full_contents += "#{heading}\n\n#{v}"
      end

      of = md_file("#{k}.md")
      of.write( nav + heading + "\n{:.no_toc}\n\n"+ md_toc + v)
      of.close
      puts "DragonRubyDocumenter: wrote documentation to '#{k}.md'"
    end

    full_mdfile = File.open("#{PDF_OUTPUT_DIR}/full.md", "w")
    full_mdfile.write full_contents
    full_mdfile.close
    puts "DragonRubyDocumenter: wrote documentation to '#{PDF_OUTPUT_DIR}/full.md'"
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

  documenter_button        ||= args.state.new_entity(:doc_button)
  documenter_button.label  ||= [x + w.half, y + h.half + 10, "Write Documentation", 1, 1]
  documenter_button.border ||= [x, y, w, h]

  args.outputs.labels << documenter_button.label
  args.outputs.borders << documenter_button.border

  if args.state.documenter_success 
    if args.state.documenter_success + 100 > args.state.tick_count
      documenter_success_label = args.state.new_entity(:success_label)
      documenter_success_label.label = [x + w.half, y + h.half - 50, "Wrote documentation...", 1, 1]
      args.outputs.labels << documenter_success_label.label
    else
      documenter_success_label = nil
      args.state.documenter_success = false
    end
  end

  if args.inputs.mouse.click && args.inputs.mouse.click.point.inside_rect?(documenter_button.border)
    if $docer.dox args
      puts "Creating documentation done at tick #{args.state.tick_count}"
      args.state.documenter_success = args.state.tick_count
    else
      puts "Error of some kind"
    end
  end
end
