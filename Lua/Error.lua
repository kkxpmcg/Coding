
--[[ 错误类型

	语法错误


	运行错误

--]]

-- 运行错误
function add(a,b)
	return a+b -- b为nil,执行�+错误
end

--add(10)

--[[ 错误处理

	assert

	error

--]]

local function add1(a,b)
	assert(type(a) == "number", "a 不是一个数字")
	assert(type(b) == "number", "b 不是一个数字")

	return a +  b

end


add1(10,20)


--[[ error
	error (message, [, level])

		终止正在执行的函数，返回message的内容作为错误信息（error函数永远都不会返回�

	level ：
		level=1 ：调用error位置(文件+行号)

		level = 2 ： 指出哪个调用的函数的函数

		level = 0 : 不添加错误信息
--]]

-- pcall : 接收一个函数和要传递给后者的参数，并执行，

pcall(function(i) print(i) end, 33)

-- xpcall 接收第二个参数，一个错误处理函数，当错误发生时，lua会在调用栈前调用错误处理函数，

-- debug.debug 提供一个lua提示符，让用户来检查错误的原因
-- debug.traceback 根据调用栈来构建一个扩展的错误信息

function myfunction()
	n = n/nil
end

function myerrorhandler(err)
	print("Error",err)
end

status = xpcall(myfunction, myerrorhandler)
print(status)

















