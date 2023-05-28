-- print函数
print("hello world!\n")

print("elephant!")

-- 注释
--print("hello world!\n")

--  多行注释
--[[
hahahahahahahahahahahahahahahah
--]]

-- 关键词
--[[
and break do  else elseif end false for
function if in local nil not or repeat
return then true until while goto

**** _Version 下划线加一串大写字母的名字被保留用于lua内部全局变量
--]]


-- 全局变量
--[[
	变量总是全局的

	可以访问没有初始化的全局变量，结果是nil

	删除一个变量是将这个变量置为nil

--]]

print(b)
b = 10
print(b)

b = nil
print(b)


