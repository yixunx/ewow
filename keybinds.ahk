;; -----------
;; C- bindings
;; -----------
#If !dummy && !ignored_frame() && !cx

^a:: move_beginning_of_line()
^e:: move_end_of_line()
^h:: backward_char()
^l:: forward_char()
^j:: next_line()
^k:: previous_line()
^g:: keyboard_quit()
^space:: set_mark_command()
^bs:: backward_kill_word()
^delete:: kill_word()
^left:: backward_word()
^right:: forward_word()

;; -------------
;; C-M- bindings
;; -------------
#If !dummy && !ignored_frame() && !cx
!^h:: backward_word()
!^l:: forward_word()
