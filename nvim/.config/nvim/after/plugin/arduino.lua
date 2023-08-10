vim.keymap.set("n", "<leader>aa", ":ArduinoAttach<CR>")
vim.keymap.set("n", "<leader>av", ":ArduinoVerify<CR>")
vim.keymap.set("n", "<leader>au", ":ArduinoUpload<CR>")
vim.keymap.set("n", "<leader>aus", ":ArduinoUploadAndSerial<CR>")
vim.keymap.set("n", "<leader>as", ":ArduinoSerial<CR>")
vim.keymap.set("n", "<leader>ab", ":ArduinoChooseBoard<CR>")
vim.keymap.set("n", "<leader>ap", ":ArduinoChoosePort<CR>")
vim.keymap.set("n", "<leader>asd", ":!kill $(pidof SCREEN)<CR><CR>") -- kill serial
