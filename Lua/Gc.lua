
--[[�Զ��ڴ����
		����������
			����
				collectgarbage("collect") : ��һ�������������ռ�ѭ��
				collectgarbage("count") : ��k�ֽ���Ϊ��λ����luaʹ�õ����ڴ��������ֵ��С�����֣�����ֻ��Ҫ����1024���ܵõ�luaʹ�õ�׼ȷ�ֽ���
				collectgarbage("restart") �����������ռ������Զ�����
				collectgarbage("seetpause") : ��arg��Ϊ�ռ����ļ�Ъ�ʣ����ؼ�Ъ�ʵ�ǰһ��ֵ
				collectgarbage("setstepmul") �� ���ز������ʵ�ǰһ��ֵ
				collectgarbage("step") : �������������ռ���
				collectgarbage("stop") : ֹͣ�����ռ��������У��ڵ�������ǰ���ռ���ֻ������ʾ�ĵ�������
--]]

mytable = {"apple", "oragne", "banana"}

print(collectgarbage("count"))

mytable = nil

print(collectgarbage("count"))

print(collectgarbage("collect"))

print(collectgarbage("count"))
