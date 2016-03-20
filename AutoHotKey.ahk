;Notes: #==win !==Alt ^==Ctr  +==shift :: run

;=========================================================================
#A:: run http://www.gxtodo.com/web/
;-------------------------------------------------------------------------

; Ctrl+shift+c to copy file path
^+c::
; null= 
send ^c
sleep,200
clipboard=%clipboard% ;%null%
tooltip,%clipboard%
sleep,500
tooltip,
return