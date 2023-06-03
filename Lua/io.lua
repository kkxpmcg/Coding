
--[[ io
	完全模式
		使用外部的文件句柄访问流，面向对象

	简单模式
		使用输入文件和输出文件
--=]]

--[[ 打开文件 file = io.open(filename [, mode])
	mode:
		r :只读 ，文件必须存在
		w ： 只写 ，文件存在，文件长度清零，文件不在则建立该文件
		a : 以附加方式打开只写文件，文件不存在会创建新文件，原文件内容保留

		r+ :  可读写，文件必须存在
		w+ : 打开可读写文件，清零文件内容，文件不存在会创建文件

		a+ ： 同a，文件可读可写

		b : 二进制模式
		+ ： 对文件可读也可以写
--]]

file = io.open("test.lua","r")

--  设置默认输入文件位test.lua
io.input(file)

-- 输出文件第一行

--[[ read  参数
	“*n” "读取一个数字"
	“*a" :从当前位置读取整个文件
	"*i" : 读取下一行，在文件EOF处返回nil
	number : 返回一个指定字符个数的字符串，或在EOF时返回。eg:file.read(5)
--]]
print(io.read())

--关闭打开的文件
io.close(file)

-- 以附加的方式打开只写文件
file = io.open("test.lua", "a")

-- 设置默认输出文件为test.lua
io.output(file)

--在文件最后一行添加lua注释
io.write("-- test.lua 文件末尾注释")

-- 关闭打开的文件
io.close(file)

--[[ io 操作
	tmpfile() : 返回一个临时文件句柄，该文件以更新模式打开，程序结束时自动删除

	io.type(file) : 检查file是否是一个可用的文件句柄

	io.flush() : 向文件写入缓冲中的所有数据

	io.lines(optional file name) : 返回一个迭代函数，每次调用将获得文件中的一行内容，遇到EOF时，返回nil，但不关闭文件
--]]


-- 完全模式

-- 以只读方式打开lua.text
file = io.open("test.lua", "r")

-- 输出文件第一行
print(file:read())

--  关闭文件
file:close()

-- 以附加方式打开lua.test
file = io.open("test.lua", "a")

-- 向文件末尾写入lua.test
file:write("--test")


-- 关闭打开的文件
file:close()


--[[ 完全模式操作
	file:seek(optional whence, optional offset)
		设置和获取当前文件位置，成功则返回最终的文件位置，失败则返回nil附加错误信息

		whence值:
			“set“: 从文件头开始
			"cur" : 从当前位置开始
			"end" : 从文件尾开始
			offset : 默认为0

	file:flush() 向文件写入缓冲中的所有数据
--]]

file = io.open("test.lua", "r")

-- 定位到文件末尾向前偏移25个字符

file:seek("end",-25)

-- 读取文件到末尾
print(file:read("*a"))

-- 关闭文件
file:close()

























