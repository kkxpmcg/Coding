
--[[自动内存管理
		垃圾回收器
			函数
				collectgarbage("collect") : 做一次完整的垃圾收集循环
				collectgarbage("count") : 以k字节数为单位返回lua使用的总内存数，这个值有小数部分，所以只需要乘上1024就能得到lua使用的准确字节数
				collectgarbage("restart") ：重启垃圾收集器的自动运行
				collectgarbage("seetpause") : 将arg设为收集器的间歇率，返回间歇率的前一个值
				collectgarbage("setstepmul") ： 返回步进倍率的前一个值
				collectgarbage("step") : 单步运行垃圾收集器
				collectgarbage("stop") : 停止垃圾收集器的运行，在调用重启前，收集器只会因显示的调用运行
--]]

mytable = {"apple", "oragne", "banana"}

print(collectgarbage("count"))

mytable = nil

print(collectgarbage("count"))

print(collectgarbage("collect"))

print(collectgarbage("count"))
