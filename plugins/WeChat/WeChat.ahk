WeChat:
    ; 定义注释
    
    vim.SetWin("WeChat", "WeChatMainWndForPC", "WeChat.exe")

     ; insert模式
    vim.mode("insert", "WeChat")
	vim.map("<C-m>", "<WeChat_NormalMode>", "WeChat")
	
   
    ; normal模式
    vim.mode("normal", "WeChat")

    vim.map("i", "<WeChat_InsertMode>", "WeChat")        
    vim.map("j", "<WeChat_Next>", "WeChat")
    vim.map("k", "<WeChat_Prev>", "WeChat")
    vim.map("gg", "<WeChat_Home>", "WeChat")
    vim.map("h", "<WeChat_Hand>", "WeChat")
    vim.map("s", "<WeChat_select>", "WeChat")
    vim.map("G", "<WeChat_End>", "WeChat")
    vim.map("/", "<WeChat_Search>", "WeChat")


return


<WeChat_NormalMode>:
    vim.mode("normal", "WeChat")
return

<WeChat_InsertMode>:
    vim.mode("insert", "WeChat")
return

<WeChat_Next>:
    Send, {Down}
return

<WeChat_Prev>:
    Send, {Up}
return

<WeChat_NextPage>:
    Send, ^{Right}
return

<WeChat_PrevPage>:
    Send, ^{Left}
return

<WeChat_Home>:
    Send, ^{home}
return

<WeChat_End>:
    Send, ^{end}
return

<WeChat_Search>:
    Send, ^f
return

<WeChat_CopyToLeft>:
    Send, ^+r
return

<WeChat_CopyToRight>:
    Send, ^r
return

<WeChat_Hand>:
    Click 22, 110 
return

<WeChat_Select>:
    Click 62, 110 
return
