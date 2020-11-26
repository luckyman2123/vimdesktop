ConEmu64:
    ; 定义注释
    vim.comment("<ConEmu64_Paste>", "粘贴")
    
    vim.SetWin("ConEmu64", "VirtualConsoleClass", "ConEmu64.exe")

    ; normal模式
    vim.mode("normal", "ConEmu64")

    vim.map("<esc>", "<Pass>", "ConEmu64")
    
    vim.map("<C-V>", "<ConEmu64_Paste>", "ConEmu64")

return

<ConEmu64_Paste>:
	  ; MsgBox shift + ins
	  Send, +{ins}
	  ; Send, {Enter}
return


