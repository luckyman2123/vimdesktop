CAJViewer:
    ; 定义注释
    vim.comment("<CAJViewer_NormalMode>", "进入normal模式")
    vim.comment("<CAJViewer_InsertMode>", "进入insert模式")
    vim.comment("<CAJViewer_NextDiffSection>", "下一处不同")
    vim.comment("<CAJViewer_PrevDiffSection>", "上一处不同")
    vim.comment("<CAJViewer_NextDiff>", "下一行不同")
    vim.comment("<CAJViewer_NextPage>", "下一页")
    vim.comment("<CAJViewer_PrevPage>", "上一页")
    vim.comment("<CAJViewer_PrevDiff>", "上一行不同")
    vim.comment("<CAJViewer_Home>", "跳转到文件开头")
    vim.comment("<CAJViewer_End>", "跳转到文件结尾")
    vim.comment("<CAJViewer_Search>", "搜索内容")
    vim.comment("<CAJViewer_CopyToLeft>", "复制到左侧")
    vim.comment("<CAJViewer_CopyToRight>", "复制到右侧")
    vim.comment("<CAJViewer_Hand>", "手形工具")
    vim.comment("<CAJViewer_Select>", "选择文字")

    vim.SetWin("CAJViewer", "Afx:01090000:8:00010003:00000000:0F020AA7", "CAJVieweru.exe")

    ; insert模式
    vim.mode("insert", "CAJViewer")

    vim.map("<esc>", "<CAJViewer_NormalMode>", "CAJViewer")

    ; normal模式
    vim.mode("normal", "CAJViewer")

    vim.map("i", "<CAJViewer_InsertMode>", "CAJViewer")

    vim.map("<esc>", "<Pass>", "CAJViewer")
    
    vim.map("j", "<CAJViewer_NextDiffSection>", "CAJViewer")
    vim.map("d", "<CAJViewer_NextDiffSection>", "CAJViewer")
    vim.map("k", "<CAJViewer_PrevDiffSection>", "CAJViewer")
    vim.map("e", "<CAJViewer_PrevDiffSection>", "CAJViewer")
    vim.map("n", "<CAJViewer_NextPage>", "CAJViewer")
    vim.map("b", "<CAJViewer_PrevPage>", "CAJViewer")
    vim.map("J", "<CAJViewer_NextDiff>", "CAJViewer")
    vim.map("K", "<CAJViewer_PrevDiff>", "CAJViewer")
    vim.map("gg", "<CAJViewer_Home>", "CAJViewer")
    vim.map("h", "<CAJViewer_Hand>", "CAJViewer")
    vim.map("s", "<CAJViewer_select>", "CAJViewer")
    vim.map("G", "<CAJViewer_End>", "CAJViewer")
    vim.map("/", "<CAJViewer_Search>", "CAJViewer")
return

; 对符合条件的控件使用insert模式，而不是normal模式
; 此段代码可以直接复制，但请修改AHK_CLASS的值和RegExMatch的第二个参数
CAJViewer_CheckMode()
{
    ; ControlGetFocus, ctrl, AHK_CLASS CAJVieweru.exe
    ControlGetFocus, ctrl, AHK_CLASS Afx:01330000:8:00010003:00000000:0001132B
    ; msgbox, ctrl
    if RegExMatch(ctrl, "Edit1")
        return true
    return false
}

<CAJViewer_NormalMode>:
    vim.mode("normal", "CAJViewer")
return

<CAJViewer_InsertMode>:
    vim.mode("insert", "CAJViewer")
return

<CAJViewer_NextDiffSection>:
    Send, {Down}
return

<CAJViewer_PrevDiffSection>:
    Send, {Up}
return

<CAJViewer_NextPage>:
    Send, ^{Right}
return

<CAJViewer_PrevPage>:
    Send, ^{Left}
return

<CAJViewer_NextDiff>:
    Send, ^+n
return

<CAJViewer_PrevDiff>:
    Send, ^+p
return

<CAJViewer_Home>:
    Send, ^{home}
return

<CAJViewer_End>:
    Send, ^{end}
return

<CAJViewer_Search>:
    Send, ^f
return

<CAJViewer_CopyToLeft>:
    Send, ^+r
return

<CAJViewer_CopyToRight>:
    Send, ^r
return

<CAJViewer_Hand>:
    Click 22, 110 
return

<CAJViewer_Select>:
    Click 62, 110 
return
