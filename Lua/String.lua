--[[�ַ���ʹ�÷�ʽ

	''
	""


--]]

string1 = "lua"

string2 = 'lua2'

string3 = [[lua3]]

print("s1 = ",string1)
print("s2 = ",string2)
print("s3 = ",string3)

--[[ת���ַ�

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


-- �ַ�������

-- �ַ���ȫ��תΪ��д��ĸ��
s1 = "abc";
print(string.upper(s1))

-- �ַ���ȫ��תΪСд��ĸ
s2 = "EDG"
print(string.lower(s2))


-- �滻�ַ���
print(string.gsub("aaa","a","z",3))

--  �����ַ���,������ʼλ�úͽ���λ��
print(string.find('hellow lua','lua',1))

--�ַ�����ת
print(string.reverse("lua"))

-- ��ʽ���ַ���
print(string.format("the value is %d",4))

-- �ַ��������͵�ת��
print(string.char(97,98,99,100))

print(string.byte("ABCD",4))

-- �ַ�������
print(string.len("abc"))

--  �����ַ���
print(string.rep("abcd",2))

-- �����ַ���
print("www.baidu.".."com")

-- �����ַ���
for word in string.gmatch("hello lua user","%a+") do print(word) end

--����ƥ��
print(string.match("I have 2 questions for you.", "%d+ %a+"))


-- �ַ�����ȡ
print(string.sub("www.baidu.com",5,9))

--������ʽ





























