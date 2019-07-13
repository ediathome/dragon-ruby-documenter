# DragonRubyGTK - Class dumps
{:.no_toc}
* [objspace](objspace.html)
* [short](short.html)
* [full](full.html)
* [index](index.html)


## Short (excluding inherited methods)
{:.no_toc}


* A markdown unordered list which will be replaced with the ToC, excluding the from above
{:toc}

### Class: (class Object)::(class GTK::Args)
*args*

* ```borders```
* ```clear_render_targets```
* ```click```
* ```click_at```
* ```controller_one```
* ```controller_two```
* ```destructure```
* ```dragon```
* ```game```
* ```grid```
* ```grid=```
* ```gtk```
* ```initialize```
* ```inputs```
* ```inputs=```
* ```keyboard```
* ```labels```
* ```lines```
* ```mouse```
* ```outputs```
* ```outputs=```
* ```passes```
* ```passes=```
* ```primitives```
* ```recording```
* ```recording=```
* ```render_target```
* ```runtime```
* ```runtime=```
* ```serialize```
* ```solids```
* ```sprites```
* ```state```
* ```state=```
* ```static_borders```
* ```static_labels```
* ```static_lines```
* ```static_primitives```
* ```static_solids```
* ```static_sprites```

[Top](#top)

---

### Class: (class Object)::(class GTK::Runtime)
*args.dragon*

* ```args```
* ```args=```
* ```argv```
* ```argv=```
* ```border_to_ffi```
* ```calc_wrapper```
* ```calcstringbox```
* ```check_framerate```
* ```clear_draw_passes```
* ```clear_draw_primitives```
* ```clear_inputs```
* ```cli_arguments```
* ```console```
* ```current_framerate```
* ```current_framerate_raw```
* ```dequeue_sounds```
* ```disable_console```
* ```enable_console```
* ```export!```
* ```ffi_draw```
* ```ffi_file```
* ```ffi_misc```
* ```ffi_mrb```
* ```framerate_below_threshold?```
* ```grep_source```
* ```help```
* ```init_args_if_needed```
* ```initialize```
* ```input_history```
* ```label_to_ffi```
* ```line_to_ffi```
* ```load_state```
* ```log```
* ```next_keyboard_inputs_after_tick```
* ```next_keyboard_inputs_before_tick```
* ```passes```
* ```pause!```
* ```paused?```
* ```pin_root_values```
* ```primitive_to_ffi```
* ```primitives```
* ```queue_key_up```
* ```quit!```
* ```quit_requested?```
* ```raise_conversion_for_rendering_failed```
* ```read_file```
* ```record_input_history```
* ```recording```
* ```render_height```
* ```render_replay_mouse```
* ```render_width```
* ```request_quit```
* ```require```
* ```reserved_primitives```
* ```reset```
* ```reset_framerate_calculation```
* ```root```
* ```root=```
* ```save_state```
* ```set_rng```
* ```show_console```
* ```solid_to_ffi```
* ```sprite_to_ffi```
* ```stage_replay_values```
* ```start!```
* ```start_recording```
* ```start_replay```
* ```stop_recording```
* ```stop_replay```
* ```suppress_framerate_warning```
* ```suppress_framerate_warning=```
* ```suppress_print_help_when_mouse_clicked```
* ```suppress_print_help_when_mouse_clicked=```
* ```target```
* ```tests```
* ```text_font```
* ```tick_console```
* ```tick_core```
* ```unpause!```

[Top](#top)

---

### Class: (class Object)::(class GTK::Root)
*args.dragon.root*

* ```files_reloaded```
* ```files_reloaded=```
* ```hash```
* ```hash=```
* ```initialize```
* ```keyboard_focus```
* ```keyboard_focus=```
* ```mouse_focus```
* ```mouse_focus=```
* ```paused```
* ```paused=```
* ```reloaded_files```
* ```reloaded_files=```
* ```take_screenshot```
* ```take_screenshot=```
* ```tick_count```
* ```tick_count=```
* ```time_per_tick```
* ```time_per_tick=```

[Top](#top)

---

### Class: (class Object)::(class GTK::OpenEntity)
*args.state.new_entity* Methods of an entity object 

* ```==```
* ```__contains_array_indexers__```
* ```__contains_array_indexers__=```
* ```__get_hash_property__```
* ```__meta__```
* ```__reserved_keys__```
* ```__set_hash_property__```
* ```__touched__```
* ```__touched__=```
* ```attributes```
* ```clear!```
* ```created_at=```
* ```created_at_elapsed```
* ```entity_id```
* ```entity_type=```
* ```global_created_at=```
* ```global_created_at_elapsed```
* ```hash```
* ```initialize```
* ```inspect```
* ```meta```
* ```meta!```
* ```method_missing```
* ```new?```
* ```new_entity```
* ```new_entity_strict```
* ```old?```
* ```original_eq_eq```
* ```set!```
* ```to_s```
* ```with_meta```

[Top](#top)

---

### Class: (class Object)::(class FFI::MRB)
*$ffi*

* ```eval```
* ```parse```
* ```reload```

[Top](#top)

---

### Class: (class Object)::(class FFI::File)
*FFI::File*

* ```loadfile```
* ```mtime```
* ```storefile```

[Top](#top)

---

### Class: (class Object)::(class GTK::OpenEntity)
*args.state*

* ```==```
* ```__contains_array_indexers__```
* ```__contains_array_indexers__=```
* ```__get_hash_property__```
* ```__meta__```
* ```__reserved_keys__```
* ```__set_hash_property__```
* ```__touched__```
* ```__touched__=```
* ```attributes```
* ```clear!```
* ```created_at_elapsed```
* ```documenter_success```
* ```entity_id```
* ```global_created_at_elapsed```
* ```hash```
* ```initialize```
* ```inspect```
* ```meta```
* ```meta!```
* ```method_missing```
* ```new?```
* ```new_entity```
* ```new_entity_strict```
* ```old?```
* ```original_eq_eq```
* ```set!```
* ```tick_count=```
* ```to_s```
* ```with_meta```

[Top](#top)

---

### Class: (class Object)::(class Module)
*GC*

* ```===```
* ```alias_method```
* ```ancestors```
* ```append_features```
* ```attr```
* ```attr_accessor```
* ```attr_reader```
* ```attr_writer```
* ```class_eval```
* ```class_exec```
* ```class_variable_defined?```
* ```class_variable_get```
* ```class_variable_set```
* ```class_variables```
* ```const_defined?```
* ```const_get```
* ```const_missing```
* ```const_set```
* ```constants```
* ```define_method```
* ```disable```
* ```dup```
* ```enable```
* ```extend_object```
* ```extended```
* ```generational_mode```
* ```generational_mode=```
* ```include```
* ```include?```
* ```included```
* ```included_modules```
* ```initialize```
* ```inspect```
* ```instance_methods```
* ```interval_ratio```
* ```interval_ratio=```
* ```method_defined?```
* ```method_removed```
* ```module_eval```
* ```module_exec```
* ```module_function```
* ```name```
* ```prepend```
* ```prepend_features```
* ```prepended```
* ```private```
* ```protected```
* ```public```
* ```remove_class_variable```
* ```remove_const```
* ```remove_method```
* ```singleton_class?```
* ```start```
* ```step_ratio```
* ```step_ratio=```
* ```to_s```
* ```undef_method```

[Top](#top)

---

### Class: (class Object)::(class GTK::Grid 
   (included_modules [Serialize]))
*args.grid*

* ```__print_origin_help```
* ```bottom```
* ```bottom=```
* ```center_x```
* ```center_x=```
* ```center_y```
* ```center_y=```
* ```h```
* ```h_half```
* ```initialize```
* ```left```
* ```left=```
* ```name```
* ```name=```
* ```origin_bottom_left!```
* ```origin_center!```
* ```origin_x```
* ```origin_x=```
* ```origin_y```
* ```origin_y=```
* ```rect```
* ```rect=```
* ```right```
* ```right=```
* ```top```
* ```top=```
* ```transform_angle```
* ```transform_rect```
* ```transform_x```
* ```transform_y```
* ```untransform_x```
* ```untransform_y```
* ```w```
* ```w_half```

[Top](#top)

---

### Class: (class Object)::(class IO 
   (included_modules [Enumerable]))
*IO.new(IO.sysopen("/dev/tty", "w"), "w")*

* ```<<```
* ```_check_readable```
* ```_read_buf```
* ```close```
* ```close_on_exec=```
* ```close_on_exec?```
* ```close_write```
* ```closed?```
* ```each```
* ```each_byte```
* ```each_char```
* ```each_line```
* ```eof```
* ```eof?```
* ```fileno```
* ```flush```
* ```getc```
* ```gets```
* ```hash```
* ```initialize```
* ```initialize_copy```
* ```isatty```
* ```pid```
* ```pos```
* ```pos=```
* ```print```
* ```printf```
* ```puts```
* ```read```
* ```readchar```
* ```readline```
* ```readlines```
* ```rewind```
* ```seek```
* ```sync```
* ```sync=```
* ```sysread```
* ```sysseek```
* ```syswrite```
* ```tell```
* ```to_i```
* ```tty?```
* ```ungetc```
* ```write```

[Top](#top)

---

### Class: (class IO 
   (included_modules [Enumerable]))::(class File
   (superclass (class IO 
     (included_modules [Enumerable])))
    (included_modules [File::Constants, Enumerable]))
*File.open*

* ```flock```
* ```initialize```
* ```mtime```
* ```path```
* ```path=```

[Top](#top)

---

### Class: (class Object)::(class NilClass 
   (included_modules [NilClassFalseClass]))
*$layout*

* ```&```
* ```^```
* ```__check_thrash__!```
* ```background_color```
* ```inspect```
* ```method_missing```
* ```nil?```
* ```to_a```
* ```to_f```
* ```to_h```
* ```to_i```
* ```to_s```
* ```|```

[Top](#top)

---

### Class: (class Object)::(class GTK::Outputs)
*args.outputs*

* ```__borders=```
* ```__labels=```
* ```__lines=```
* ```__primitives=```
* ```__raise_deprecated__```
* ```__reserved=```
* ```__solids=```
* ```__sprites=```
* ```__static_borders=```
* ```__static_labels=```
* ```__static_lines=```
* ```__static_primitives=```
* ```__static_reserved=```
* ```__static_solids=```
* ```__static_sprites=```
* ```all_borders```
* ```all_labels```
* ```all_lines```
* ```all_primitives```
* ```all_reserved```
* ```all_solids```
* ```all_sounds```
* ```all_sprites```
* ```borders```
* ```borders=```
* ```clear```
* ```clear_non_static```
* ```height```
* ```height=```
* ```initialize```
* ```labels```
* ```labels=```
* ```lines```
* ```lines=```
* ```primitives```
* ```primitives=```
* ```reserved```
* ```reserved=```
* ```serialize```
* ```solids```
* ```solids=```
* ```sounds```
* ```sounds=```
* ```sprites```
* ```sprites=```
* ```static_borders```
* ```static_borders=```
* ```static_labels```
* ```static_labels=```
* ```static_lines```
* ```static_lines=```
* ```static_primitives```
* ```static_primitives=```
* ```static_reserved```
* ```static_reserved=```
* ```static_solids```
* ```static_solids=```
* ```static_sprites```
* ```static_sprites=```
* ```target```
* ```target=```
* ```tick```
* ```width```
* ```width=```

[Top](#top)

---

### Class: (class Object)::(class Array 
   (included_modules [GTK::Primitive::ConversionCapabilities, Enumerable]))
*args.passes*

* ```&```
* ```*```
* ```+```
* ```-```
* ```<<```
* ```<=>```
* ```==```
* ```[]```
* ```[]=```
* ```__ary_cmp```
* ```__ary_eq```
* ```__ary_index```
* ```__original_add__```
* ```__original_add_single__```
* ```__sort_sub__```
* ```__svalue```
* ```_inspect```
* ```any_intersects_rect?```
* ```append```
* ```assoc```
* ```at```
* ```bsearch```
* ```bsearch_index```
* ```clear```
* ```collect!```
* ```combination```
* ```compact```
* ```compact!```
* ```concat```
* ```delete```
* ```delete_at```
* ```delete_if```
* ```dig```
* ```each```
* ```each_index```
* ```empty?```
* ```eql?```
* ```fetch```
* ```fill```
* ```first```
* ```flatten```
* ```flatten!```
* ```include_any?```
* ```index```
* ```initialize```
* ```initialize_copy```
* ```insert```
* ```inspect```
* ```join```
* ```keep_if```
* ```last```
* ```length```
* ```map!```
* ```map_2d```
* ```pack```
* ```pairs_to_hash```
* ```permutation```
* ```pop```
* ```prepend```
* ```product```
* ```push```
* ```rassoc```
* ```reject!```
* ```reject_false```
* ```reject_nil```
* ```replace```
* ```rest```
* ```reverse```
* ```reverse!```
* ```reverse_each```
* ```rindex```
* ```rotate```
* ```rotate!```
* ```sample```
* ```select!```
* ```serialize```
* ```shift```
* ```shuffle```
* ```shuffle!```
* ```size```
* ```slice```
* ```slice!```
* ```sort```
* ```sort!```
* ```to_a_pairs```
* ```to_ary```
* ```to_h```
* ```to_s```
* ```transpose```
* ```uniq```
* ```uniq!```
* ```unshift```
* ```values_at```
* ```|```

[Top](#top)

---

### Class: (class Object)::(class GTK::Inputs)
*args.inputs*

* ```controller_one```
* ```controller_two```
* ```controllers```
* ```controllers=```
* ```history```
* ```history=```
* ```initialize```
* ```keyboard```
* ```keyboard=```
* ```mouse```
* ```mouse=```
* ```serialize```
* ```text```
* ```text=```

[Top](#top)

---

### Class: (class Object)::(class GTK::Controller)
*args.inputs.controller_one*

* ```clear```
* ```initialize```
* ```key_down```
* ```key_down=```
* ```key_held```
* ```key_held=```
* ```key_up```
* ```key_up=```
* ```left_analog_x_perc```
* ```left_analog_x_perc=```
* ```left_analog_x_raw```
* ```left_analog_x_raw=```
* ```left_analog_y_perc```
* ```left_analog_y_perc=```
* ```left_analog_y_raw```
* ```left_analog_y_raw=```
* ```left_right```
* ```left_right=```
* ```right_analog_x_perc```
* ```right_analog_x_perc=```
* ```right_analog_x_raw```
* ```right_analog_x_raw=```
* ```right_analog_y_perc```
* ```right_analog_y_perc=```
* ```right_analog_y_raw```
* ```right_analog_y_raw=```
* ```serialize```
* ```up_down```
* ```up_down=```

[Top](#top)

---

### Class: (class Object)::(class GTK::Controller)
*args.inputs.controller_two*

* ```clear```
* ```initialize```
* ```key_down```
* ```key_down=```
* ```key_held```
* ```key_held=```
* ```key_up```
* ```key_up=```
* ```left_analog_x_perc```
* ```left_analog_x_perc=```
* ```left_analog_x_raw```
* ```left_analog_x_raw=```
* ```left_analog_y_perc```
* ```left_analog_y_perc=```
* ```left_analog_y_raw```
* ```left_analog_y_raw=```
* ```left_right```
* ```left_right=```
* ```right_analog_x_perc```
* ```right_analog_x_perc=```
* ```right_analog_x_raw```
* ```right_analog_x_raw=```
* ```right_analog_y_perc```
* ```right_analog_y_perc=```
* ```right_analog_y_raw```
* ```right_analog_y_raw=```
* ```serialize```
* ```up_down```
* ```up_down=```

[Top](#top)

---

### Class: (class Object)::(class Array 
   (included_modules [GTK::Primitive::ConversionCapabilities, Enumerable]))
*args.inputs.controllers*

* ```&```
* ```*```
* ```+```
* ```-```
* ```<<```
* ```<=>```
* ```==```
* ```[]```
* ```[]=```
* ```__ary_cmp```
* ```__ary_eq```
* ```__ary_index```
* ```__original_add__```
* ```__original_add_single__```
* ```__sort_sub__```
* ```__svalue```
* ```_inspect```
* ```any_intersects_rect?```
* ```append```
* ```assoc```
* ```at```
* ```bsearch```
* ```bsearch_index```
* ```clear```
* ```collect!```
* ```combination```
* ```compact```
* ```compact!```
* ```concat```
* ```delete```
* ```delete_at```
* ```delete_if```
* ```dig```
* ```each```
* ```each_index```
* ```empty?```
* ```eql?```
* ```fetch```
* ```fill```
* ```first```
* ```flatten```
* ```flatten!```
* ```include_any?```
* ```index```
* ```initialize```
* ```initialize_copy```
* ```insert```
* ```inspect```
* ```join```
* ```keep_if```
* ```last```
* ```length```
* ```map!```
* ```map_2d```
* ```pack```
* ```pairs_to_hash```
* ```permutation```
* ```pop```
* ```prepend```
* ```product```
* ```push```
* ```rassoc```
* ```reject!```
* ```reject_false```
* ```reject_nil```
* ```replace```
* ```rest```
* ```reverse```
* ```reverse!```
* ```reverse_each```
* ```rindex```
* ```rotate```
* ```rotate!```
* ```sample```
* ```select!```
* ```serialize```
* ```shift```
* ```shuffle```
* ```shuffle!```
* ```size```
* ```slice```
* ```slice!```
* ```sort```
* ```sort!```
* ```to_a_pairs```
* ```to_ary```
* ```to_h```
* ```to_s```
* ```transpose```
* ```uniq```
* ```uniq!```
* ```unshift```
* ```values_at```
* ```|```

[Top](#top)

---

### Class: (class Object)::(class GTK::Keyboard)
*args.inputs.keyboard*

* ```clear```
* ```down```
* ```has_focus```
* ```has_focus=```
* ```initialize```
* ```inspect```
* ```key_down```
* ```key_down=```
* ```key_held```
* ```key_held=```
* ```key_up```
* ```key_up=```
* ```left```
* ```left_right```
* ```right```
* ```serialize```
* ```to_s```
* ```up```
* ```up_down```

[Top](#top)

---

### Class: (class Object)::(class GTK::Mouse)
*args.inputs.mouse*

* ```clear```
* ```click```
* ```click=```
* ```down```
* ```has_focus```
* ```has_focus=```
* ```initialize```
* ```moved```
* ```moved=```
* ```moved_at```
* ```moved_at=```
* ```moved_at_time```
* ```moved_at_time=```
* ```position```
* ```previous_click```
* ```previous_click=```
* ```serialize```
* ```up```
* ```up=```
* ```x```
* ```x=```
* ```y```
* ```y=```

[Top](#top)

---

