
-- ʹ��table ����ģ��

-- ����һ����Ϊmodule��ģ��
module = {}

-- ����һ������
module.constant = "����һ������"

-- ����һ������
function module.func1()
	io.write("����һ�����к���! \n")
end

local function func2()
	print("����һ��˽�к���!")
end

return module


-- C��
-- loadlib����ָ���ĿⲢ�����ӵ�lua��Ȼ�������򿪿�
local path = "/usr/local/lua/lib/libluasocket.so"
local f = laodlib(path,"luaopen_socket")
