*AppsKey::RWin

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
;^g:: keyboard_quit()
^space:: set_mark_command()
^bs:: backward_kill_word()
^delete:: kill_word()
^left:: backward_word()
^right:: forward_word()
^;:: kill_line()

;; -------------
;; C-M- bindings
;; -------------
#If !dummy && !ignored_frame() && !cx
!^h:: backward_word()
!^l:: forward_word()
!^j:: scroll_down()
!^k:: scroll_up()
!^v:: paste_kindle()

;; -----------------
;; C-Shift- bindings
;; -----------------
#If !dummy && !ignored_frame() && !cx
^+a:: select_all()
^+j:: self_insert_command()
^+e:: ctrl_e()

;; -----------------
;; C-Win- bindings
;; -----------------
#^s:: save_buffer()

;; ------------
;; special keys
;; ------------
#If !dummy && !ignored_frame() && !cx
escape:: keyboard_quit()

;; ------------
;; Mouse
;; ------------
; MouseIsOver(WinTitle) {
;     MouseGetPos,,, Win
;     return WinExist(WinTitle . " ahk_id " . Win)
; }
; #If MouseIsOver("ahk_class CabinetWClass")
; MButton::
;     Send {LButton}{AppsKey}e
;     return