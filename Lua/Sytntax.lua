
myvalue = 7
print("hello")

mytable = {1,2,3,4}

for index = 1,4 do
	print("line : ", index)
end

for index = 1,4 do print("index :", index) end

--[[�ؼ���
	and, local, break, nil, do, not, else,or,elseif, repeat,end,return,flase, then,for,
	ture, function, until,if, while, in
--]]

--[[	��������ϰ��

		���� �� ʹ��ȫ��д���»���  MY_CONSTANT

		���� �� ��һ����ĸСд  myVariable

		ȫ�ֱ����� ��һ����ĸ��Сдg��ʾ gMyGlobal

		��������һ���ַ���д function MyFunction

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

-- number ˫���ȸ���
myNumber = 7.65

-- table
myTable = {2,3,4,5,6}

myTable[6] = 12

-- �ֲ�����
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
	while  ���ж�
	repeat ���ж�,����ִ��һ��
--]]


--index = 1

--repeat
	--print("loop pass :", index)
	--index = index + 1
--until index > 10



for index = 1,100,2 do
	--print(index)
end


-- ����
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



-- dofile ���벢����ִ��lua�ű��ļ�

-- math.random

myDie = math.random(1,9)
print(myDie)

-- math.min() ȷ�������е����ֵ


-- tonumber() �ַ���ת��������

-- toString() ����ת�����ַ���

-- string.len �����ַ����ĳ���

-- string.sub(myString, start, end) ����ָ���ַ������Ӵ�

-- string.format ��ʽ�����ָ���ַ���

-- string.find(sourceString, findString) ��sourcestring�в���һ������findstring�ַ���λ��


-- table

myTable = {}
for index = 1,100 do
	myTable[index] = math.random(1,1000)
end

print(myTable[88])

-- table.getn ����������Ԫ�صĸ���

for index = 1, table.getn(myTable) do
	--print(myTable[index])
end


-- table.sort() ��С��������
table.sort(myTable)

-- table.insert(myTable, position, value) ��table�в���һ���µ�ֵ��
table.insert(myTable,25,"hello")


-- table.remove(myTable,position) ��table��ɾ��������һ��Ԫ��

-- pairs ����table�е�ÿһ��Ԫ��

for index,value in pairs(myTable) do
	print(index,value)
end


-- ******************io

-- io.open("test_data.lua","w")










































