-- lua是动态型语言，变量不要类型定义，只需要为变量赋值！

--[[ 基本数据类型

	nil:无效值，（在条件表达式中相当于false
		删除作用：给一个全局变量或者表里的变量赋一个nil值，等同于把它们删掉
			table1 = {key = "val", key2 = "val2","val3"}
			for k,v in pairs(table1) do
				print(k .. '-' ..v)
			end

		比较: nil作比较时应该加上双引号 "
			type(X) == "nil"


	boolean: false和true
		flase和nil都为false
		其他均为true
		0乙彩莟rue

	number : 双精度类型的实浮点数

	string : 字符串 使用双引号或单引号表示
		[[ ]]：表示一块字符串，中间可以换行

		字符串和number运算，会把字符串转换成number

		字符串连接使用 ..
		字符串长度 #
			len == "www.baidu.com"
			print（#len）



	function : 由c或lua编写的函数

		函数可以存储在变量中 :

			function factorial1(n)
				if n == 0 then
					return 1
				else
					return n * factorial1(n - 1)
				end
			end

			print(factorial1(5));
			factorial2 = factorial1
			print(factorial2(10))

		函数可以为匿名函数 :

			function testFun(tab,fun)
				for k,v in pairs(tab) do
					print(fun(k,v))
				end
			end

			tab = {key1 = "val1", key2 = "val2"}
			testFun(tab, function(key,value)
				return key .. "=" .. val
			end
			)


	userdata : 任意存储在变量中的c数据结构

		用户自定义数据，用于表示c/c++语言库所创建的类型,可以将任意c/c++的任意数据类型的数据(一般是struct和指针)

	thread : 执行的独立线程，用于执行协同程序 :

		线程和协程的区别 :
			线程可以同时运行，而携程任意时刻只能运行一个，并且处于运行状态的携程只有被挂起时才会暂停

	table : 表示一个关联数组，数组的索引可以是数字，字符，字符串或表类型，table的创建是通过构造表达式来完成，最简单构造表达式是{}。表示一个空表

		空表 :local a = {}

		直接初始化表 : local tbl2 = {"apple","pear"}

		关联数组，索引可以是数字或者是字符串

			a["key"] = value
			a[10] = value2

		索引从1开始

		table动态长度,添加新数据时table会自动增长，没初始的table都是nil


--]]

a = "hello world"
print(type(a))

print('\n')
b = 10
print(type(b))

c = nil
print(type(c))

d = false
print(type(d))

e = print
print(type(e))

-- nil 的使用
--[[table1 = {1 = "val", 2 = "val2","val3"}
	for k,v in pairs(table1) do
		print(k .. '-' ..v)
	end

--]]

-- nil的比较
print(type(X))

print(type(x)==nil)
print(type(x)=="nil")



