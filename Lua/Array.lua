
-- �����ʾ��ͬԪ�صļ���

-- һά����
array = {"lua","Tutorial"}

for i = 0,2 do
	print(array[i])
end


-- ���������ɸ�,��ʼΪ1
array = {}
for i = -2,2 do
	array[i] = i * 2
end

for i = -2,2 do
	print(array[i])
end


print("\n")

-- ��ά����

array1 = {}

for i = 1,3 do
	array1[i] = {}
		for j = 1,3 do
			array1[i][j] = i * j
		end
end

for i = 1,3 do
	for j = 1,3 do
		print(array1[i][j])
	end
end
