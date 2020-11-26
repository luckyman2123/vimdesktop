xShell:
    ; 定义注释
    vim.comment("<xShell_Paste>", "粘贴")
    
    vim.SetWin("xShell", "Xshell6::MainFrame_0", "Xshell.exe")

    ; normal模式
    vim.mode("normal", "xShell")

    vim.map("<esc>", "<Pass>", "xShell")
    
    vim.map("<C-V>", "<xShell_Paste>", "xShell")

return

<xShell_Paste>:
	  ; MsgBox shift + ins
	  Send, +{ins}
	  ; Send, {Enter}
return


