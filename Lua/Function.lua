--[[ ����:
	���壺
		�����Ƕ����ͱ��ʽ���г���ķ���,���Դ���һЩ����Ĺ�����Ҳ���Լ���һЩֵ

	��; :
		���ָ��������
		���㲢����ֵ
--]]

--[[��������

	optional_function_scope function function_name(argument1 ,argument2,argument3...,argumentn)
		function_body
		return result_params_comma_separated
	end

	optional_function_scope :����������(ȫ�� | �ֲ�)

	function_name : ��������

	argument1...n : ����

	function_body : ������

	result_params_comma_separated : ��������ֵ


==]]

function max(num1, num2)

	if (num1 > num2) then
		result = num1;
	else
		result = num2;
	end

	return result;
end

print("��ֵ�Ƚ����ֵΪ",max(1,2))



-- ������Ϊ����
myPrint = function(parm)
	print("���Ǵ�ӡ���� -  ##", parm,"##")
end

function add(num1, num2, functionPrint)

	result = num1 + num2

	functionPrint(result)
end

myPrint(10)
add(2,5,myPrint)



--�����෵��ֵ
function maximum(a)
	local mi = 1
	local m = a[mi]

	for i, val in ipairs(a) do
		if val > m then
			mi = i
			m = val
		end
	end

	return m, mi
end

print(maximum({8,10,23,12,55}))



-- �����ɱ����
function add1(...)
	local s = 0
	for i, v in ipairs{...} do --> {...} //��ʾһ�������б䳤�������ɵ�����
		s = s + v
	end

	return s
end

print(add1(3,4,5,6,7))


-- �ɱ������ֵ������
function average(...)
	result = 0
	local arg = {...}
	for i,v in ipairs(arg) do
		result = result + v
	end

	print("�ܹ�����" .. #arg.. "����")
	return result/#arg

end

print("ƽ��ֵΪ",average(10,5,3,4,5,6))

-- select("#",...)��ȡ�ɱ����������


-- �̶��������Ͽɱ����
function fwrite(fmt,...)
	return io.write(string.format(fmt,...))
end

fwrite("runoob\n")
fwrite("%d%d\n",1,2)





































