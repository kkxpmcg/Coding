
-- �������Ƕ��󣬴��������е�ȷ���ĵ�ַ

--[[ ���� for ������
	��������
	״̬����
	���Ʊ���

	��ʽ
		for k,v in pairs(t) do
			print(k,v)
		end
--]]


array = {"Google","BiYing"}

for key,value in ipairs(array) do
	print(key,value)
end


-- ��״̬�ĵ�����

function square(iteratorMaxCount,CurrentNumber)

	if CurrentNumber<iteratorMaxCount then
		CurrentNumber = CurrentNumber + 1
	return CurrentNumber, CurrentNumber*CurrentNumber

	end

end

for i,n in square,3,0 do
	print(i,n)
end


-- ��״̬�ĵ�����

function elementIterator (collcetion)
	local index = 0
	local count = #collcetion

	-- �հ�����
	return function ()
		index = index + 1
		if index <= count then
			return collcetion[index]
		end

	end
end

for element in elementIterator(array) do
	print(element)
end














