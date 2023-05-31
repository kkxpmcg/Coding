--[[字符串使用方式

	''
	""


--]]

string1 = "lua"

string2 = 'lua2'

string3 = [[lua3]]

print("s1 = ",string1)
print("s2 = ",string2)
print("s3 = ",string3)

--[[转义字符

	\a
	\b
	\f
	\n
	\r
	\t
	\v
	\\
	\*

]]


-- 字符串操作

-- 字符串全部转为大写字母。
s1 = "abc";
print(string.upper(s1))

-- 字符串全部转为小写字母
s2 = "EDG"
print(string.lower(s2))


-- 替换字符串
print(string.gsub("aaa","a","z",3))

--  查找字符串,返回起始位置和结束位置
print(string.find('hellow lua','lua',1))

--字符串反转
print(string.reverse("lua"))

-- 格式化字符串
print(string.format("the value is %d",4))

-- 字符串和整型的转换
print(string.char(97,98,99,100))

print(string.byte("ABCD",4))

-- 字符串长度
print(string.len("abc"))

--  拷贝字符串
print(string.rep("abcd",2))

-- 连接字符串
print("www.baidu.".."com")

-- 遍历字符串
for word in string.gmatch("hello lua user","%a+") do print(word) end

--查找匹配
print(string.match("I have 2 questions for you.", "%d+ %a+"))


-- 字符串截取
print(string.sub("www.baidu.com",5,9))

--正则表达式





























