Fatty:
    ; 定义注释

    vim.SetWin("Fatty", "FaTTY")

    ; insert模式
    vim.mode("insert", "Fatty")

    vim.map("i", "<Fatty_NormalMode>", "Fatty")
    vim.mode("<F8>", "<Fatty_F8>", "Fatty")
    vim.mode("8", "<Fatty_8>", "Fatty")

    ; normal模式
    vim.mode("normal", "Fatty")

    vim.mode("<F8>", "<Fatty_F8>", "Fatty")
    vim.mode("8", "<Fatty_8>", "Fatty")

    vim.map("<F1>", "<Fatty_InsertMode>", "Fatty")
return

<Fatty_NormalMode>:
    vim.mode("normal", "Fatty")
return

<Fatty_InsertMode>:
    vim.mode("insert", "Fatty")

<Fatty_F8>:
    Send, 8

<Fatty_8>:
    Send, <F8>
    
return
