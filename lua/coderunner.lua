-- Coderunner

local function exec(command) 
   
   vim.api.nvim_command(':! '..command)
end

local function execTerm(command) 
   
   vim.api.nvim_command(':tabnew | terminal '..command)
end


local function  mapall(key,keymap)
   map('n',key,keymap)
   map('i',key,'<Esc> '..keymap)
   map('v',key,'<Esc> '..keymap)
end

function Coderunner(key)

    local fp = vim.fn.expand('%:p')
    local dir = vim.fn.expand('%:p:h')
    -- File name with extension
    local fn = vim.fn.expand('%:t')
    -- File name without extension
    local fnwe = vim.fn.expand('%:t:r')
    local ext = vim.fn.expand('%:e')
    -- print(ext)

    if key=="F5" then

       if ext=="lua" then
          exec('lua fp')
       elseif ext=="c" then
           exec(string.format('cd %s && mkdir -p build && gcc -g -o build/%s %s && ./build/%s',dir,fnwe,fp,fnwe))
       elseif ext=="cpp" then
           exec(string.format('cd %s && mkdir -p build && g++ -g -o build/%s %s && ./build/%s',dir,fnwe,fp,fnwe))
       elseif ext=="java" then
           exec(string.format('cd %s && mkdir -p build && javac %s -d build && cd build && java %s',dir,fn,fnwe))
       elseif ext=="sh" then
           exec(string.format('cd %s && sh %s',dir,fp))
       elseif true then
       elseif true then
       elseif true then
       end

    elseif key=="F6" then
        if ext=="c" then 
            execTerm(string.format('cd %s && mkdir -p build && gcc -g -o build/%s %s && ./build/%s',dir,fnwe,fp,fnwe))
        elseif ext=="cpp" then
            execTerm(string.format('cd %s && mkdir -p build && gcc -g -o build/%s %s && ./build/%s',dir,fnwe,fp,fnwe))
        elseif ext=="sh" then
           execTerm(string.format('cd %s && sh %s',dir,fp))
        end

    elseif key=="F7" then
        if ext=="c" then 
            execTerm(string.format('cd %s && mkdir -p build && gcc -g -o build/%s %s && gdb -tui -q ./build/%s',dir,fnwe,fp,fnwe))
        elseif ext=="cpp" then
            execTerm(string.format('cd %s && mkdir -p build && gcc -g -o build/%s %s && gdb -tui -q ./build/%s',dir,fnwe,fp,fnwe))
        end

    end

end


mapall('<F5>','<Esc>: lua Coderunner("F5") <CR>')
mapall('<F6>','<Esc>: lua Coderunner("F6") <CR>')
mapall('<F7>','<Esc>: lua Coderunner("F7") <CR>')


