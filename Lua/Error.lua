
--[[ ��������

	�﷨����


	���д���

--]]

-- ���д���
function add(a,b)
	return a+b -- bΪnil,ִ���+����
end

--add(10)

--[[ ������

	assert

	error

--]]

local function add1(a,b)
	assert(type(a) == "number", "a ����һ������")
	assert(type(b) == "number", "b ����һ������")

	return a +  b

end


add1(10,20)


--[[ error
	error (message, [, level])

		��ֹ����ִ�еĺ���������message��������Ϊ������Ϣ��error������Զ�����᷵�أ

	level ��
		level=1 ������errorλ��(�ļ�+�к�)

		level = 2 �� ָ���ĸ����õĺ����ĺ���

		level = 0 : ����Ӵ�����Ϣ
--]]

-- pcall : ����һ��������Ҫ���ݸ����ߵĲ�������ִ�У�

pcall(function(i) print(i) end, 33)

-- xpcall ���յڶ���������һ��������������������ʱ��lua���ڵ���ջǰ���ô���������

-- debug.debug �ṩһ��lua��ʾ�������û����������ԭ��
-- debug.traceback ���ݵ���ջ������һ����չ�Ĵ�����Ϣ

function myfunction()
	n = n/nil
end

function myerrorhandler(err)
	print("Error",err)
end

status = xpcall(myfunction, myerrorhandler)
print(status)

















