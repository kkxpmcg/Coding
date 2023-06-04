
--[[lua中的面向对象
		 类 = table + function

		 继承 : 通过metable

--]]

Account = {balance = 0} -- 定义类的属性
function Account.withdraw(v) --定义类的方法
	Account.balance = Account.balance - v;
	return Account.balance
end

print(Account.withdraw(100.00))

-- 元类
Rectangle = {area = 0, length = 0, breadth = 0}

function Rectangle:new(o,length,breadth)
	o = o or {}

	setmetatable(o,self) -- setmetatable(mytable,mymetatable)   把 self 设为 o 的元表

	self.__index = self; -- 如果__index包含一个函数的话，Lua就会调用那个函数

	self.length = length or 0
	self.breadth = breadth or 0
	self.area = length*breadth

	return o
end

-- 派生类
function Rectangle:printArea()
	print("矩形面积为",self.area)
end

-- 创建对象,
r = Rectangle:new(nil,10,20)

-- 访问属性
print(r.length)

-- 访问函数
r:printArea()

--完整实例

-- 元类
Shape = {area = 0}

-- 基础类方法 new

function Shape:new(o,side)
	o = o or {}
	setmetatable(o,self)

	self.__index = self
	side = side or 0
	self.area = side * side

	return o
end


-- 基础类方法
function Shape:printArea()
	print("面积为",self.area)
end

--  创建对象
myshape = Shape:new(nil,10)

myshape:printArea()



--继承

Square = Shape:new()

-- 派生类方法 new
function Square:new(o,side)
	o = o or Shape:new(o,side)
	setmetatable(o,self)
	self.__index = self
	return o
end

-- 派生类方法
function Square:printArea()
	print("正方形面积为",self.area)
end






































