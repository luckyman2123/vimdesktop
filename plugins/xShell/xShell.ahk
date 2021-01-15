xShell:
    ; 定义注释
    vim.comment("<xShell_Paste>", "粘贴")
    
    vim.SetWin("xShell", "Xshell6::MainFrame_0", "Xshell.exe")

    ; insert 模式
    vim.mode("insert", "xShell")
    vim.mode(<esc>, "<xShell_NormalMode>")
    

    ; normal模式
    vim.mode("normal", "xShell")

    vim.mode("i", "<xShell_insertMode>")    
    vim.map("<esc>", "<Pass>", "xShell")
    vim.map("p", "<xShell_sendPassword>")    
    
    vim.map("<C-V>", "<xShell_Paste>", "xShell")
    vim.map("4", "<xShell_Data>", "xShell")
    ;vim.map("a", "<xShell_Paste>", "xShell")

return


<xShell_NormalMode>:
    vim.mode("normal", "xShell")
return

<xShell_InsertMode>:
    vim.mode("insert", "xShell")
return

<xShell_sendPassword>:
	Send, ^{F4}
return 

<xShell_Paste>:
	  ;MsgBox shift + ins
	  Send, +{ins}
	  ; Send, {Enter}
<xShell_Data>:
	Send, ^{F3}
return


