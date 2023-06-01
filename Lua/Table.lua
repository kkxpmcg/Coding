
--[[table
	table��С���̶�

	tableʹ�ù���������,����ʹ�ó���nil����������͵�ֵ�����������


	table ���module��package��object
--]]

-- table�Ĺ���
mytable = {}
mytable[1] = "lua"
mytable = nil
-- �˴���ִ���������� GC

-- ��������ָ��ͬһ��table
mytable1 = {}
print("mytable1��������",type(mytable1))

mytable1[1] = "lua"
mytable1["wow"] = "�޸�ǰ"
print("mytable1 ����Ϊ1��Ԫ����",mytable1[1])
print("mytable1 ����Ϊwow��Ԫ����",mytable1["wow"])

alternatetable = mytable1

print("alternatetable ����Ϊ1��Ԫ����",alternatetable[1])
print("alternatetable ����Ϊwow��Ԫ����",alternatetable["wow"])

alternatetable["wow"] = "�޸ĺ�"

print("mytable1 ����Ϊwow��Ԫ����",mytable1["wow"])


-- �ͷű���
alternatetable = nil
print("alternatetable ��",alternatetable)

-- mytable1 ��Ȼ���Է���
print("mytable1 ����Ϊwow��Ԫ����",mytable1["wow"])

mytable1 = nil
print("mytable1 ��",mytable1)



-- table ����

-- ����
fruits = {"banana","orange","apple"}

print("���Ӻ���ַ���",table.concat(fruits))

-- ָ�������ַ�
print("���Ӻ���ַ���",table.concat(fruits,","))

-- ָ������������table
print("���Ӻ���ַ���",table.concat(fruits,",",2,3))


-- ������Ƴ�
fruits = {"banana","orange","apple"}

--��ĩβ����
table.insert(fruits,"mango")
print("����Ϊ4��Ԫ��Ϊ",fruits[4])

--������Ϊ2�ļ�������
table.insert(fruits,2,"grapes")
print("����Ϊ2��Ԫ��Ϊ",fruits[2])

print("���һ��Ԫ��Ϊ",fruits[5])
table.remove(fruits)

print("�Ƴ������һ��Ԫ��Ϊ",fruits[5])



-- table����
fruits = {"banana","orange","apple","grapes"}
print("����ǰ")

for k,v in ipairs(fruits) do
	print(k,v)
end


table.sort(fruits)

print("�����")

for k,v in ipairs(fruits) do
	print(k,v)
end

-- table ���ֵ

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
--print("tbl���ֵ:", table_maxn(tbl))
print("tbl����",#tbl) --#��table.getn�����������жϵĵط�ֹͣ����,��ȡ��table���Ȳ���ȷ

function table_len(t)
	local len = 0
	for k,v in pairs(t) do
		len = len + 1
	end
	return len
end

print("tbl����",table_len(tbl))


























