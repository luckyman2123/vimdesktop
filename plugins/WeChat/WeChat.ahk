WeChat:
    ; 定义注释
    vim.comment("<WeChat_NormalMode>", "进入normal模式")
    vim.comment("<WeChat_InsertMode>", "进入insert模式")
    vim.comment("<WeChat_NextDiffSection>", "下一处不同")
    vim.comment("<WeChat_PrevDiffSection>", "上一处不同")
    vim.comment("<WeChat_NextDiff>", "下一行不同")
    vim.comment("<WeChat_NextPage>", "下一页")
    vim.comment("<WeChat_PrevPage>", "上一页")
    vim.comment("<WeChat_PrevDiff>", "上一行不同")
    vim.comment("<WeChat_Home>", "跳转到文件开头")
    vim.comment("<WeChat_End>", "跳转到文件结尾")
    vim.comment("<WeChat_Search>", "搜索内容")
    vim.comment("<WeChat_CopyToLeft>", "复制到左侧")
    vim.comment("<WeChat_CopyToRight>", "复制到右侧")
    vim.comment("<WeChat_Hand>", "手形工具")
    vim.comment("<WeChat_Select>", "选择文字")

    vim.SetWin("WeChat", "WeChatMainWndForPC", "WeChat.exe")

   
    ; normal模式
    vim.mode("normal", "WeChat")

    vim.map("i", "<WeChat_InsertMode>", "WeChat")

    vim.map("<esc>", "<Pass>", "WeChat")
    
    vim.map("j", "<WeChat_Next>", "WeChat")
    vim.map("k", "<WeChat_Prev>", "WeChat")
    vim.map("gg", "<WeChat_Home>", "WeChat")
    vim.map("h", "<WeChat_Hand>", "WeChat")
    vim.map("s", "<WeChat_select>", "WeChat")
    vim.map("G", "<WeChat_End>", "WeChat")
    vim.map("/", "<WeChat_Search>", "WeChat")

     ; insert模式
    vim.mode("insert", "WeChat")

    vim.map("J", "<WeChat_Next>", "WeChat")
    vim.map("K", "<WeChat_Prev>", "WeChat")

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
