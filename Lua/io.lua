
--[[ io
	��ȫģʽ
		ʹ���ⲿ���ļ�������������������

	��ģʽ
		ʹ�������ļ�������ļ�
--=]]

--[[ ���ļ� file = io.open(filename [, mode])
	mode:
		r :ֻ�� ���ļ��������
		w �� ֻд ���ļ����ڣ��ļ��������㣬�ļ������������ļ�
		a : �Ը��ӷ�ʽ��ֻд�ļ����ļ������ڻᴴ�����ļ���ԭ�ļ����ݱ���

		r+ :  �ɶ�д���ļ��������
		w+ : �򿪿ɶ�д�ļ��������ļ����ݣ��ļ������ڻᴴ���ļ�

		a+ �� ͬa���ļ��ɶ���д

		b : ������ģʽ
		+ �� ���ļ��ɶ�Ҳ����д
--]]

file = io.open("test.lua","r")

--  ����Ĭ�������ļ�λtest.lua
io.input(file)

-- ����ļ���һ��

--[[ read  ����
	��*n�� "��ȡһ������"
	��*a" :�ӵ�ǰλ�ö�ȡ�����ļ�
	"*i" : ��ȡ��һ�У����ļ�EOF������nil
	number : ����һ��ָ���ַ��������ַ���������EOFʱ���ء�eg:file.read(5)
--]]
print(io.read())

--�رմ򿪵��ļ�
io.close(file)

-- �Ը��ӵķ�ʽ��ֻд�ļ�
file = io.open("test.lua", "a")

-- ����Ĭ������ļ�Ϊtest.lua
io.output(file)

--���ļ����һ�����luaע��
io.write("-- test.lua �ļ�ĩβע��")

-- �رմ򿪵��ļ�
io.close(file)

--[[ io ����
	tmpfile() : ����һ����ʱ�ļ���������ļ��Ը���ģʽ�򿪣��������ʱ�Զ�ɾ��

	io.type(file) : ���file�Ƿ���һ�����õ��ļ����

	io.flush() : ���ļ�д�뻺���е���������

	io.lines(optional file name) : ����һ������������ÿ�ε��ý�����ļ��е�һ�����ݣ�����EOFʱ������nil�������ر��ļ�
--]]


-- ��ȫģʽ

-- ��ֻ����ʽ��lua.text
file = io.open("test.lua", "r")

-- ����ļ���һ��
print(file:read())

--  �ر��ļ�
file:close()

-- �Ը��ӷ�ʽ��lua.test
file = io.open("test.lua", "a")

-- ���ļ�ĩβд��lua.test
file:write("--test")


-- �رմ򿪵��ļ�
file:close()


--[[ ��ȫģʽ����
	file:seek(optional whence, optional offset)
		���úͻ�ȡ��ǰ�ļ�λ�ã��ɹ��򷵻����յ��ļ�λ�ã�ʧ���򷵻�nil���Ӵ�����Ϣ

		whenceֵ:
			��set��: ���ļ�ͷ��ʼ
			"cur" : �ӵ�ǰλ�ÿ�ʼ
			"end" : ���ļ�β��ʼ
			offset : Ĭ��Ϊ0

	file:flush() ���ļ�д�뻺���е���������
--]]

file = io.open("test.lua", "r")

-- ��λ���ļ�ĩβ��ǰƫ��25���ַ�

file:seek("end",-25)

-- ��ȡ�ļ���ĩβ
print(file:read("*a"))

-- �ر��ļ�
file:close()

























