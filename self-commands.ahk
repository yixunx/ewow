paste_kindle()
{
    loop, Parse, Clipboard, `n, `r
    {   
    	Clipboard := A_LoopField
	    break
    }
    Send, ^v
}

select_all()
{
    Send, ^a
}

ctrl_e()
{
    Send, ^e
}
