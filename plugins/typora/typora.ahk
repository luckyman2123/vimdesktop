typora:
    ; 定义注释
    vim.comment("<typora_Paste>", "粘贴")
    
    vim.SetWin("typora", "Chrome_WidgetWin_1", "Typora.exe")

    ; normal模式
    vim.mode("normal", "typora")

    vim.map("<esc>", "<Pass>", "typora")
    
    vim.map("<F1>", "<typora_Paste>", "typora")

return



; 快捷增加字体颜色
addFontColor(color)
{
    clipboard := "" ; 清空剪切板
    Send {ctrl down}c{ctrl up} ; 复制
    SendInput {TEXT}<font color='%color%'>
    SendInput {ctrl down}v{ctrl up} ; 粘贴
    If(clipboard = ""){
        SendInput {TEXT}</font> ; Typora 在这不会自动补充
    }else{
        SendInput {TEXT}</ ; Typora中自动补全标签
    }
}

<typora_Paste>:
	  addFontColor("red")
return


