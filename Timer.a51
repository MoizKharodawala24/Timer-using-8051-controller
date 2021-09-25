wave:cpl p1.0
	acall delay
	sjmp wave

delay:mov tmod,#01h
	mov tl0,#00h
	mov th0,#0dch
	setb tr0
	l:jnb tf0,l
	clr tr0
	clr tf0
	ret
end