-- Coderunner

local function exec(command) 
   
   vim.api.nvim_command(':! '..command)
end

local function execJob(command)

   vim.api.nvim_command(':call jobstart( \''..command..' \' )')
end

local function execTerm(command) 
   
   vim.api.nvim_command(':tabnew | terminal '..command)
end


local function  mapall(key,keymap,opts)
    if opts then
        map('n',key,keymap,opts)
        map('i',key,'<Esc> '..keymap,opts)
        map('v',key,'<Esc> '..keymap,opts)
    else
        map('n',key,keymap)
        map('i',key,'<Esc> '..keymap)
        map('v',key,'<Esc> '..keymap)
    end
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
           exec(string.format('cd %s ; mkdir -p build ; gcc -Wall -g -o build/%s %s ; [ -f input.txt ] && cp -v input.txt build ;./build/%s',dir,fnwe,fp,fnwe))
       elseif ext=="cpp" then
           exec(string.format('cd %s ; mkdir -p build ; g++ -g -o build/%s %s ; [ -f input.txt ] && cp -v input.txt build ; ./build/%s',dir,fnwe,fp,fnwe))
       elseif ext=="java" then
           exec(string.format('cd %s ; mkdir -p build ; javac %s -d build ; cd build ; java %s',dir,fn,fnwe))
       elseif ext=="sh" then
           exec(string.format('cd %s ; sh %s',dir,fp))
       elseif ext=="py" then
           exec(string.format('cd %s ; python3 %s',dir,fp))
       elseif ext=="js" then
           exec(string.format('cd %s ; node %s',dir,fp))
       elseif ext=="html" then
           execJob(string.format('cd %s ; surf %s',dir,fp))
       elseif ext=="md" then
           vim.cmd(string.format('MarkdownPreview'))
       else
           print("Coderunner not configured")
       end

    elseif key=="F6" then
        if ext=="c" then 
            execTerm(string.format('cd %s ; mkdir -p build ; gcc -Wall -g -o build/%s %s ; [ -f input.txt ] && cp -v input.txt build ; ./build/%s',dir,fnwe,fp,fnwe))
        elseif ext=="cpp" then
            execTerm(string.format('cd %s ; mkdir -p build ; g++ -g -o build/%s %s ; [ -f input.txt ] && cp -v input.txt build ; ./build/%s',dir,fnwe,fp,fnwe))
        elseif ext=="java" then
            execTerm(string.format('cd %s ; mkdir -p build ; javac %s -d build ; cd build ; java %s',dir,fn,fnwe))
        elseif ext=="sh" then
           execTerm(string.format('cd %s ; sh %s',dir,fp))
        elseif ext=="py" then
           execTerm(string.format('cd %s ; python3 %s',dir,fp))
        elseif ext=="js" then
           execTerm(string.format('cd %s ; node %s',dir,fp))
        else 
           print("Coderunner not configured")
        end

    elseif key=="F7" then
        if ext=="c" then 
            execTerm(string.format('cd %s ; mkdir -p build ; gcc -g -o build/%s %s ; [ -f input.txt ] && cp -v input.txt build ; gdb -tui -q ./build/%s',dir,fnwe,fp,fnwe))
        elseif ext=="cpp" then
            execTerm(string.format('cd %s ; mkdir -p build ; g++ -g -o build/%s %s ; [ -f input.txt ] && cp -v input.txt build ; gdb -tui -q ./build/%s',dir,fnwe,fp,fnwe))
        else 
            print("Coderunner (Debugger) not configured")
        end

    end

end


mapall('<F5>','<Esc>: lua Coderunner("F5") <CR>', {silent = true, noremap=true} )
mapall('<F6>','<Esc>: lua Coderunner("F6") <CR>', {silent = true, noremap=true} )
mapall('<F7>','<Esc>: lua Coderunner("F7") <CR>', {silent = true, noremap=true} )


