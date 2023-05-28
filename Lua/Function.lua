--[[ 函数:
	定义：
		函数是对语句和表达式进行抽象的方法,可以处理一些特殊的工作，也可以计算一些值

	用途 :
		完成指定的任务
		计算并返回值
--]]

--[[函数定义

	optional_function_scope function function_name(argument1 ,argument2,argument3...,argumentn)
		function_body
		return result_params_comma_separated
	end

	optional_function_scope :函数作用域(全局 | 局部)

	function_name : 函数名字

	argument1...n : 参数

	function_body : 函数体

	result_params_comma_separated : 函数返回值


==]]

function max(num1, num2)

	if (num1 > num2) then
		result = num1;
	else
		result = num2;
	end

	return result;
end

print("两值比较最大值为",max(1,2))



-- 函数作为参数
myPrint = function(parm)
	print("这是打印函数 -  ##", parm,"##")
end

function add(num1, num2, functionPrint)

	result = num1 + num2

	functionPrint(result)
end

myPrint(10)
add(2,5,myPrint)



--函数多返回值
function maximum(a)
	local mi = 1
	local m = a[mi]

	for i, val in ipairs(a) do
		if val > m then
			mi = i
			m = val
		end
	end

	return m, mi
end

print(maximum({8,10,23,12,55}))



-- 函数可变参数
function add1(...)
	local s = 0
	for i, v in ipairs{...} do --> {...} //表示一个由所有变长参数构成的数组
		s = s + v
	end

	return s
end

print(add1(3,4,5,6,7))


-- 可变参数赋值给变量
function average(...)
	result = 0
	local arg = {...}
	for i,v in ipairs(arg) do
		result = result + v
	end

	print("总共传入" .. #arg.. "个数")
	return result/#arg

end

print("平均值为",average(10,5,3,4,5,6))

-- select("#",...)获取可变参数的数量


-- 固定参数加上可变参数
function fwrite(fmt,...)
	return io.write(string.format(fmt,...))
end

fwrite("runoob\n")
fwrite("%d%d\n",1,2)





































