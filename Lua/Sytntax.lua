
myvalue = 7
print("hello")

mytable = {1,2,3,4}

for index = 1,4 do
	print("line : ", index)
end

for index = 1,4 do print("index :", index) end

--[[关键字
	and, local, break, nil, do, not, else,or,elseif, repeat,end,return,flase, then,for,
	ture, function, until,if, while, in
--]]

--[[	变量命名习惯

		常量 ： 使用全大写和下划线  MY_CONSTANT

		变量 ： 第一个字母小写  myVariable

		全局变量： 第一个字母用小写g表示 gMyGlobal

		函数名第一个字符大写 function MyFunction

--]]


-- nil, Boolean, string, number, table

myValue = 7
print(type(myValue))

myValue = "hello"
print(type(myValue))

-- nil
myValue = nil
print(myValue)


-- true
myValue = true

-- string
myValue = "hello world"

-- number 双精度浮点
myNumber = 7.65

-- table
myTable = {2,3,4,5,6}

myTable[6] = 12

-- 局部变量
local myValue = 3

tableA = {1,2,3}
tableB = {1,2,3}

if tableA == tableB then
	print("The table are the same")
else
	print("The tables are not the same")
end

tableC = tableA

if tableC == tableA then
	print("The table are the same")
else
	print("The tables are not the same")
end


--[[
	while  先判断
	repeat 后判断,最少执行一次
--]]


--index = 1

--repeat
	--print("loop pass :", index)
	--index = index + 1
--until index > 10



for index = 1,100,2 do
	--print(index)
end


-- 函数
function Wow()
	print("")
	print("Wow, that was awesome!")
	print("")
end

Wow()

function HowMany(...)
	if arg.n > 0 then
		for idx = 1,arg.n do
			--local myString = string.format("%s%d","Argument", index)
			print(arg[idx])
		end
	else
		print("No varuables entered.")
	end
end


HowMany("a","b","c")

myString = "math.max(7,8,9,10)"
loadstring(myString)()


-- loadstring, assert



-- dofile 载入并立即执行lua脚本文件

-- math.random

myDie = math.random(1,9)
print(myDie)

-- math.min() 确定集合中的最大值


-- tonumber() 字符串转换成数字

-- toString() 数字转换乘字符串

-- string.len 返回字符串的长度

-- string.sub(myString, start, end) 返回指定字符串的子串

-- string.format 格式化输出指定字符串

-- string.find(sourceString, findString) 在sourcestring中查找一个符合findstring字符的位置


-- table

myTable = {}
for index = 1,100 do
	myTable[index] = math.random(1,1000)
end

print(myTable[88])

-- table.getn 返回数组中元素的个数

for index = 1, table.getn(myTable) do
	--print(myTable[index])
end


-- table.sort() 从小到大排列
table.sort(myTable)

-- table.insert(myTable, position, value) 在table中插入一个新的值，
table.insert(myTable,25,"hello")


-- table.remove(myTable,position) 从table中删除并返回一个元素

-- pairs 遍历table中的每一个元素

for index,value in pairs(myTable) do
	print(index,value)
end


-- ******************io

-- io.open("test_data.lua","w")










































