
-- 算数运算符： +，-，*，/，%，^，-, //(整除运算符 5//2 = 2)

a = 21
b = 10

c = a + b

print(c)

c = 1 - b
print(c)

c = a * b
print(c)

c = a/b
print(c)

c = a % b
print(c)

c = a ^ 2
print(c)

c = -a
print(c)

--c = a // b  -- error
--print(c)



-- 关系运算符 ==,~=（不等于）， >, < >=, <=

a = 21
b = 10

if a == b then
	print("a = b")
else
	print("a != b")
end


if a ~= b then
	print("a != b")
else
	print("a = b")
end


if a < b then
	print("a < b")
else
	print("a >= b")
end


if a > b then
	print("a > b")
else
	print("a <= b")
end


-- 逻辑运算符 : and ,or, not

a = true
b = true

if a and b then
	print("a and b =  true")
else
	print("a and b = flase")
end

if a or b then
	print("a or b = true")
else
	print("a or b = false")
end


if not(a and b) then
	print("not (a and b) = true")
else
	print("not (a and b) = false")
end



-- 其他运算符: ..(连接两个字符串), #（返回字符串或表的长度）

a = "hello"
b = "world"

print("a .. b = ", a..b)

print("a的长度 = ",#a)



--[[ 运算符优先级

	从高到低：
		^
		not
		*,/.%
		+ -
		..
		<   >  <=  >= ~= ==
		and
		or
--]]



















