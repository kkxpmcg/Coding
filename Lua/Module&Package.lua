
-- 使用table 创建模块

-- 定义一个名为module的模块
module = {}

-- 定义一个常量
module.constant = "这是一个常量"

-- 定义一个函数
function module.func1()
	io.write("这是一个公有函数! \n")
end

local function func2()
	print("这是一个私有函数!")
end

return module


-- C包
-- loadlib加载指定的库并且连接到lua，然而并不打开库
local path = "/usr/local/lua/lib/libluasocket.so"
local f = laodlib(path,"luaopen_socket")
