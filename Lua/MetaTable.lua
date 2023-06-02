
-- 元表允许改变table的行为

mytable = {}
mymetatable = {}
-- 把mymetatable设置为mytable的元表
setmetatable(mytable,mymetatable)

print(getmetatable(mytable))


-- __index 元方法

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

--[[ 查找规则

	1 在表中查找，如果找到，返回该元素，找不到则继续

	2 判断该表是否由元表，如果没有元表，返回nil，有元表则继续

	3 判断元表有没有__index方法，如果__index方法为nil,则返回nil,如果__index方法是一个表, 则重复1，2，3，如果__index方法是一个函数值，则返回该函数的返回值


--]]


--[[ __newIndex 原方法

	__newIndex 元方法用来对表更新，
	__index 则用来对表访问

--]]

mymetatable = {}

mytable = setmetatable({key1 = "value1"},{__newIndex = mymetatable})

print(mytable.key1)

mytable.newkey = "新值2"
print(mytable.newkey, mymetatable.newkey)



















