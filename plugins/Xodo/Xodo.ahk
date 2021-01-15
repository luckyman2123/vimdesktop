Xodo:
    ; 定义注释
    vim.comment("<Xodo_NormalMode>", "进入normal模式")
    vim.comment("<Xodo_InsertMode>", "进入insert模式")
    vim.comment("<Xodo_NextDiffSection>", "下一处不同")
    vim.comment("<Xodo_Edit>", "进入编辑模式")
    vim.comment("<Xodo_NextDiff>", "下一行不同")
    vim.comment("<Xodo_NextPage>", "下一页")
    vim.comment("<Xodo_PrevPage>", "上一页")
    vim.comment("<Xodo_PrevDiff>", "上一行不同")
    vim.comment("<Xodo_Home>", "跳转到文件开头")
    vim.comment("<Xodo_End>", "跳转到文件结尾")
    vim.comment("<Xodo_Search>", "搜索内容")
    vim.comment("<Xodo_CopyToLeft>", "复制到左侧")
    vim.comment("<Xodo_CopyToRight>", "复制到右侧")
    vim.comment("<Xodo_Hand>", "手形工具")
    vim.comment("<Xodo_Select>", "选择文字")
    vim.comment("<Xodo_Sticky>", "note")
    vim.comment("<Xodo_Text>", "text")

    vim.SetWin("Xodo", "ApplicationFrameWindow", "ApplicationFrameHost.exe")

    ; insert模式
    vim.mode("insert", "Xodo")
    vim.map("<esc>", "<Xodo_NormalMode>", "Xodo")
    vim.map("d", "<Xodo_NextDiffSection>", "Xodo")
    vim.map("n", "<Xodo_Sticky>", "Xodo")
    vim.map("h", "<Xodo_Hand>", "Xodo")
	vim.map("t", "<Xodo_Text>", "Xodo")
    
    

    ; normal模式
    vim.mode("normal", "Xodo")

    vim.map("i", "<Xodo_InsertMode>", "Xodo")

    vim.map("<esc>", "<Pass>", "Xodo")
    
    vim.map("j", "<Xodo_NextDiffSection>", "Xodo")
    vim.map("d", "<Xodo_NextDiffSection>", "Xodo")
    vim.map("i", "<Xodo_Edit>", "Xodo")
    ;vim.map("n", "<Xodo_NextPage>", "Xodo")
    vim.map("n", "<Xodo_Sticky>", "Xodo")
    vim.map("b", "<Xodo_PrevPage>", "Xodo")
    vim.map("J", "<Xodo_NextDiff>", "Xodo")
    vim.map("K", "<Xodo_PrevDiff>", "Xodo")
    vim.map("gg", "<Xodo_Home>", "Xodo")
    vim.map("h", "<Xodo_Hand>", "Xodo")
    vim.map("t", "<Xodo_Text>", "Xodo")
    vim.map("s", "<Xodo_select>", "Xodo")
    vim.map("G", "<Xodo_End>", "Xodo")
    vim.map("/", "<Xodo_Search>", "Xodo")
return

; 对符合条件的控件使用insert模式，而不是normal模式
; 此段代码可以直接复制，但请修改AHK_CLASS的值和RegExMatch的第二个参数
Xodo_CheckMode()
{
    ; ControlGetFocus, ctrl, AHK_CLASS Xodou.exe
    ControlGetFocus, ctrl, AHK_CLASS Afx:01330000:8:00010003:00000000:0001132B
    ; msgbox, ctrl
    if RegExMatch(ctrl, "Edit1")
        return true
    return false
}

<Xodo_NormalMode>:
    Click 33, 66
    vim.mode("normal", "Xodo")
return

<Xodo_InsertMode>:
    vim.mode("insert", "Xodo")
return

<Xodo_NextDiffSection>:
    Send, {Down}
return

<Xodo_Edit>:
    Click 1162, 64
    vim.mode("insert", "Xodo")			; 进入 insert 模式
return

<Xodo_NextPage>:
    Send, ^{Right}
return

<Xodo_PrevPage>:
    Send, ^{Left}
return

<Xodo_NextDiff>:
    Send, ^+n
return

<Xodo_PrevDiff>:
    Send, ^+p
return

<Xodo_Home>:
    Send, ^{home}
return

<Xodo_End>:
    Send, ^{end}
return

<Xodo_Search>:
    Send, ^f
return

<Xodo_CopyToLeft>:
    Send, ^+r
return

<Xodo_CopyToRight>:
    Send, ^r
return

<Xodo_Close>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 40, 65
	MouseMove, xpos, ypos
	send, {Click}
return

<Xodo_Sticky>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 100, 65
	MouseMove, xpos, ypos
	send, {Click}
return


<Xodo_Highlight>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 160, 65
	MouseMove, xpos, ypos
	send, {Click}
return


<Xodo_UnderLine>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 220, 65
	MouseMove, xpos, ypos
	send, {Click}
return


<Xodo_StrikeOut>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 280, 65
	MouseMove, xpos, ypos
	send, {Click}
return

<Xodo_Squiggly>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 340, 65
	MouseMove, xpos, ypos
	send, {Click}
return


<Xodo_Lnk>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 520, 65
	MouseMove, xpos, ypos
	send, {Click}
return

<Xodo_Erase>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 580, 60
	MouseMove, xpos, ypos
	send, {Click}
return




<Xodo_Marker>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 640, 60
	MouseMove, xpos, ypos
	send, {Click}
return


<Xodo_Text>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 700, 65
	MouseMove, xpos, ypos
	send, {Click}
return


<Xodo_Line>:
	MouseGetPos, xpos, ypos
	;Msgbox, The cursor is at X%xpos% Y%ypos%.
	
	Click 880, 65
	MouseMove, xpos, ypos
	send, {Click}
return




<Xodo_Hand>:   
    MouseGetPos, xpos, ypos
   ;Msgbox, The cursor is at X%xpos% Y%ypos%.	
	Click 1165, 66
	MouseMove, xpos, ypos
	send, {Click}
return

<Xodo_Select>:
    Click 62, 110 
return






