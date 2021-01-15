BlueStacks:
    ; 定义注释
    vim.comment("<BlueStacksGP_Paste>", "粘贴")
    
    vim.SetWin("BlueStacks", "BS2CHINAUI", "BlueStacksGP.exe")

    ; normal模式
    vim.mode("normal", "BlueStacks")

    ;vim.map("<esc>", "<Pass>", "BlueStacks")
    
    ;vim.map("<WheelDown>", "<BlueStacksGP_Next>", "BlueStacks")

return

<BlueStacksGP_Next>:
	  MsgBox shift + ins
	  ;Send, +{ins}
	  ; Send, {Enter}
return


