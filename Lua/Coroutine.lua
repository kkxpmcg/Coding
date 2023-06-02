
--[[Эͬ����

	Эͬ������ص�:
		ӵ�ж����Ķ�ջ
		�����ľֲ�����
		������ָ��ָ��
		������Эͬ������ȫ�ֱ���

	Э�̺��̵߳�����?
		�߳̿���ͬʱ���У�����ʱ��ֻ��һ��Эͬ�������У�ֻ����ȷҪ�󱻹����ʱ��Ż����

--]]

-- �﷨

-- create ������һ����������Ҫ���resume����ʹ��
co = coroutine.create(
	function(i)
		print(i)
	end
)

coroutine.resume(co,1)

-- status Э��״̬ �� dead | suspended | running
print(coroutine.status(co))

print("-------------------")

-- wrap  ����Э�̣�����һ������
co = coroutine.wrap(
	function (i)
		print(i)
	end
)

co(2)


print("----------------")

-- yield ��Э������Ϊ����״̬

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

-- running �����������ܵ�Э��
print(coroutine.running())

print("*************************")

function foo(a)
	print("foo �������",a)
	return coroutine.yield(2 * a) --����2a��ֵ
end

co = coroutine.create(function(a,b)

	print("��һ��Эͬ����ִ�����",a,b)

	local r = foo(a + 1)

	print("�ڶ���Эͬ����ִ�����",r)
	local r,s = coroutine.yield(a+b, a - b) -- a.b��ֵΪ��һ�ε���Эͬ����ʱ����


	print("������Эͬ����ִ�����",r,s)
	return b,"����Эͬ����" -- b��ֵΪ�ڶ��ε���Эͬ����ʱ����

end)

print("main",coroutine.resume(co,1,10))

print("***********")

print("main",coroutine.resume(co, "r"))

print("main",coroutine.resume(co, "x","y"))

























