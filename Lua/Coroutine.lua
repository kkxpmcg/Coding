
--[[协同程序

	协同程序的特点:
		拥有独立的堆栈
		独立的局部变量
		独立的指令指针
		和其它协同程序共享全局变量

	协程和线程的区别?
		线程可以同时运行，任意时刻只有一个协同程序运行，只有明确要求被挂起的时候才会挂起

--]]

-- 语法

-- create 参数是一个函数，需要配合resume唤醒使用
co = coroutine.create(
	function(i)
		print(i)
	end
)

coroutine.resume(co,1)

-- status 协程状态 ： dead | suspended | running
print(coroutine.status(co))

print("-------------------")

-- wrap  创建协程，返回一个函数
co = coroutine.wrap(
	function (i)
		print(i)
	end
)

co(2)


print("----------------")

-- yield 将协程设置为挂起状态

co2 = coroutine.create(
	function()
		for i = 1,10 do
			print(i)
			if i == 3 then
				print(coroutine.status(co2))
				print(coroutine.running())
			end
			coroutine.yield()
		end
	end
)

coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)

print(coroutine.status(co2))

-- running ：返回正在跑的协程
print(coroutine.running())

print("*************************")

function foo(a)
	print("foo 函数输出",a)
	return coroutine.yield(2 * a) --返回2a的值
end

co = coroutine.create(function(a,b)

	print("第一次协同程序执行输出",a,b)

	local r = foo(a + 1)

	print("第二次协同程序执行输出",r)
	local r,s = coroutine.yield(a+b, a - b) -- a.b的值为第一次调用协同程序时传入


	print("第三次协同程序执行输出",r,s)
	return b,"结束协同程序" -- b的值为第二次调用协同程序时传入

end)

print("main",coroutine.resume(co,1,10))

print("***********")

print("main",coroutine.resume(co, "r"))

print("main",coroutine.resume(co, "x","y"))

























