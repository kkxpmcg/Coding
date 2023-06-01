
--[[table
	table大小不固定

	table使用关联型数组,可以使用除了nil外的任意类型的值作数组的索引


	table 解决module，package，object
--]]

-- table的构造
mytable = {}
mytable[1] = "lua"
mytable = nil
-- 此处会执行垃圾回收 GC

-- 两个变量指向同一个table
mytable1 = {}
print("mytable1的类型是",type(mytable1))

mytable1[1] = "lua"
mytable1["wow"] = "修改前"
print("mytable1 索引为1的元素是",mytable1[1])
print("mytable1 索引为wow的元素是",mytable1["wow"])

alternatetable = mytable1

print("alternatetable 索引为1的元素是",alternatetable[1])
print("alternatetable 索引为wow的元素是",alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable1 索引为wow的元素是",mytable1["wow"])


-- 释放变量
alternatetable = nil
print("alternatetable 是",alternatetable)

-- mytable1 仍然可以访问
print("mytable1 索引为wow的元素是",mytable1["wow"])

mytable1 = nil
print("mytable1 是",mytable1)



-- table 操作

-- 连接
fruits = {"banana","orange","apple"}

print("连接后的字符串",table.concat(fruits))

-- 指定连接字符
print("连接后的字符串",table.concat(fruits,","))

-- 指定索引来连接table
print("连接后的字符串",table.concat(fruits,",",2,3))


-- 插入和移除
fruits = {"banana","orange","apple"}

--在末尾插入
table.insert(fruits,"mango")
print("索引为4的元素为",fruits[4])

--在索引为2的键处插入
table.insert(fruits,2,"grapes")
print("索引为2的元素为",fruits[2])

print("最后一个元素为",fruits[5])
table.remove(fruits)

print("移除后最后一个元素为",fruits[5])



-- table排序
fruits = {"banana","orange","apple","grapes"}
print("排序前")

for k,v in ipairs(fruits) do
	print(k,v)
end


table.sort(fruits)

print("排序后")

for k,v in ipairs(fruits) do
	print(k,v)
end

-- table 最大值

function table_maxn(t)
	local mn = nil
	for k,v in ipairs(t) do
		if mn == nil then
			mn = v
		end

		if mv < v then
			mn = v
		end
	end

	return mn
end

tbl = {[1] = 2,[2] = 6,[3] = 34,[26] = 5,[34] = 10}
--print("tbl最大值:", table_maxn(tbl))
print("tbl长度",#tbl) --#和table.getn都会在索引中断的地方停止计数,获取的table长度不正确

function table_len(t)
	local len = 0
	for k,v in pairs(t) do
		len = len + 1
	end
	return len
end

print("tbl长度",table_len(tbl))


























