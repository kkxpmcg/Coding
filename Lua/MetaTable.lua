
-- Ԫ������ı�table����Ϊ

mytable = {}
mymetatable = {}
-- ��mymetatable����Ϊmytable��Ԫ��
setmetatable(mytable,mymetatable)

print(getmetatable(mytable))


-- __index Ԫ����

other= {foo = 3}

print(other.foo)

t = setmetatable({},{__index = other})

print(t.foo)

mytable = setmetatable({key1 = "value1"},{
	__index = function(mytable, key)
		if key == "key2" then
			return "metatablevalue"
		else
			return nil
		end
	end
})


print(mytable.key1,mytable.key2)

--[[ ���ҹ���

	1 �ڱ��в��ң�����ҵ������ظ�Ԫ�أ��Ҳ��������

	2 �жϸñ��Ƿ���Ԫ�����û��Ԫ������nil����Ԫ�������

	3 �ж�Ԫ����û��__index���������__index����Ϊnil,�򷵻�nil,���__index������һ����, ���ظ�1��2��3�����__index������һ������ֵ���򷵻ظú����ķ���ֵ


--]]


--[[ __newIndex ԭ����

	__newIndex Ԫ���������Ա���£�
	__index �������Ա����

--]]

mymetatable = {}

mytable = setmetatable({key1 = "value1"},{__newIndex = mymetatable})

print(mytable.key1)

mytable.newkey = "��ֵ2"
print(mytable.newkey, mymetatable.newkey)



















