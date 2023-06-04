
--[[lua�е��������
		 �� = table + function

		 �̳� : ͨ��metable

--]]

Account = {balance = 0} -- �����������
function Account.withdraw(v) --������ķ���
	Account.balance = Account.balance - v;
	return Account.balance
end

print(Account.withdraw(100.00))

-- Ԫ��
Rectangle = {area = 0, length = 0, breadth = 0}

function Rectangle:new(o,length,breadth)
	o = o or {}

	setmetatable(o,self) -- setmetatable(mytable,mymetatable)   �� self ��Ϊ o ��Ԫ��

	self.__index = self; -- ���__index����һ�������Ļ���Lua�ͻ�����Ǹ�����

	self.length = length or 0
	self.breadth = breadth or 0
	self.area = length*breadth

	return o
end

-- ������
function Rectangle:printArea()
	print("�������Ϊ",self.area)
end

-- ��������,
r = Rectangle:new(nil,10,20)

-- ��������
print(r.length)

-- ���ʺ���
r:printArea()

--����ʵ��

-- Ԫ��
Shape = {area = 0}

-- �����෽�� new

function Shape:new(o,side)
	o = o or {}
	setmetatable(o,self)

	self.__index = self
	side = side or 0
	self.area = side * side

	return o
end


-- �����෽��
function Shape:printArea()
	print("���Ϊ",self.area)
end

--  ��������
myshape = Shape:new(nil,10)

myshape:printArea()



--�̳�

Square = Shape:new()

-- �����෽�� new
function Square:new(o,side)
	o = o or Shape:new(o,side)
	setmetatable(o,self)
	self.__index = self
	return o
end

-- �����෽��
function Square:printArea()
	print("���������Ϊ",self.area)
end






































