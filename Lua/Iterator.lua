
-- 迭代器是对象，代表容器中的确定的地址

--[[ 泛型 for 迭代器
	迭代函数
	状态常量
	控制变量

	格式
		for k,v in pairs(t) do
			print(k,v)
		end
--]]


array = {"Google","BiYing"}

for key,value in ipairs(array) do
	print(key,value)
end


-- 无状态的迭代器

function square(iteratorMaxCount,CurrentNumber)

	if CurrentNumber<iteratorMaxCount then
		CurrentNumber = CurrentNumber + 1
	return CurrentNumber, CurrentNumber*CurrentNumber

	end

end

for i,n in square,3,0 do
	print(i,n)
end


-- 多状态的迭代器

function elementIterator (collcetion)
	local index = 0
	local count = #collcetion

	-- 闭包函数
	return function ()
		index = index + 1
		if index <= count then
			return collcetion[index]
		end

	end
end

for element in elementIterator(array) do
	print(element)
end














