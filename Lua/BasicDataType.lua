-- lua�Ƕ�̬�����ԣ�������Ҫ���Ͷ��壬ֻ��ҪΪ������ֵ��

--[[ ������������

	nil:��Чֵ��������������ʽ���൱��false
		ɾ�����ã���һ��ȫ�ֱ������߱���ı�����һ��nilֵ����ͬ�ڰ�����ɾ��
			table1 = {key = "val", key2 = "val2","val3"}
			for k,v in pairs(table1) do
				print(k .. '-' ..v)
			end

		�Ƚ�: nil���Ƚ�ʱӦ�ü���˫���� "
			type(X) == "nil"


	boolean: false��true
		flase��nil��Ϊfalse
		������Ϊtrue
		0�Ҳ��true

	number : ˫�������͵�ʵ������

	string : �ַ��� ʹ��˫���Ż����ű�ʾ
		[[ ]]����ʾһ���ַ������м���Ի���

		�ַ�����number���㣬����ַ���ת����number

		�ַ�������ʹ�� ..
		�ַ������� #
			len == "www.baidu.com"
			print��#len��



	function : ��c��lua��д�ĺ���

		�������Դ洢�ڱ����� :

			function factorial1(n)
				if n == 0 then
					return 1
				else
					return n * factorial1(n - 1)
				end
			end

			print(factorial1(5));
			factorial2 = factorial1
			print(factorial2(10))

		��������Ϊ�������� :

			function testFun(tab,fun)
				for k,v in pairs(tab) do
					print(fun(k,v))
				end
			end

			tab = {key1 = "val1", key2 = "val2"}
			testFun(tab, function(key,value)
				return key .. "=" .. val
			end
			)


	userdata : ����洢�ڱ����е�c���ݽṹ

		�û��Զ������ݣ����ڱ�ʾc/c++���Կ�������������,���Խ�����c/c++�������������͵�����(һ����struct��ָ��)

	thread : ִ�еĶ����̣߳�����ִ��Эͬ���� :

		�̺߳�Э�̵����� :
			�߳̿���ͬʱ���У���Я������ʱ��ֻ������һ�������Ҵ�������״̬��Я��ֻ�б�����ʱ�Ż���ͣ

	table : ��ʾһ���������飬������������������֣��ַ����ַ���������ͣ�table�Ĵ�����ͨ���������ʽ����ɣ���򵥹������ʽ��{}����ʾһ���ձ�

		�ձ� :local a = {}

		ֱ�ӳ�ʼ���� : local tbl2 = {"apple","pear"}

		�������飬�������������ֻ������ַ���

			a["key"] = value
			a[10] = value2

		������1��ʼ

		table��̬����,����������ʱtable���Զ�������û��ʼ��table����nil


--]]

a = "hello world"
print(type(a))

print('\n')
b = 10
print(type(b))

c = nil
print(type(c))

d = false
print(type(d))

e = print
print(type(e))

-- nil ��ʹ��
--[[table1 = {1 = "val", 2 = "val2","val3"}
	for k,v in pairs(table1) do
		print(k .. '-' ..v)
	end

--]]

-- nil�ıȽ�
print(type(X))

print(type(x)==nil)
print(type(x)=="nil")


