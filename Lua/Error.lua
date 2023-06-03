
--[[ ´íÎóÀàĞÍ

	Óï·¨´íÎó


	ÔËĞĞ´íÎó

--]]

-- ÔËĞĞ´íÎó
function add(a,b)
	return a+b -- bÎªnil,Ö´ĞĞĞ+´íÎó
end

--add(10)

--[[ ´íÎó´¦Àí

	assert

	error

--]]

local function add1(a,b)
	assert(type(a) == "number", "a ²»ÊÇÒ»¸öÊı×Ö")
	assert(type(b) == "number", "b ²»ÊÇÒ»¸öÊı×Ö")

	return a +  b

end


add1(10,20)


--[[ error
	error (message, [, level])

		ÖÕÖ¹ÕıÔÚÖ´ĞĞµÄº¯Êı£¬·µ»ØmessageµÄÄÚÈİ×÷Îª´íÎóĞÅÏ¢£¨errorº¯ÊıÓÀÔ¶¶¼²»»á·µ»Ø£

	level £º
		level=1 £ºµ÷ÓÃerrorÎ»ÖÃ(ÎÄ¼ş+ĞĞºÅ)

		level = 2 £º Ö¸³öÄÄ¸öµ÷ÓÃµÄº¯ÊıµÄº¯Êı

		level = 0 : ²»Ìí¼Ó´íÎóĞÅÏ¢
--]]

-- pcall : ½ÓÊÕÒ»¸öº¯ÊıºÍÒª´«µİ¸øºóÕßµÄ²ÎÊı£¬²¢Ö´ĞĞ£¬

pcall(function(i) print(i) end, 33)

-- xpcall ½ÓÊÕµÚ¶ş¸ö²ÎÊı£¬Ò»¸ö´íÎó´¦Àíº¯Êı£¬µ±´íÎó·¢ÉúÊ±£¬lua»áÔÚµ÷ÓÃÕ»Ç°µ÷ÓÃ´íÎó´¦Àíº¯Êı£¬

-- debug.debug Ìá¹©Ò»¸öluaÌáÊ¾·û£¬ÈÃÓÃ»§À´¼ì²é´íÎóµÄÔ­Òò
-- debug.traceback ¸ù¾İµ÷ÓÃÕ»À´¹¹½¨Ò»¸öÀ©Õ¹µÄ´íÎóĞÅÏ¢

function myfunction()
	n = n/nil
end

function myerrorhandler(err)
	print("Error",err)
end

status = xpcall(myfunction, myerrorhandler)
print(status)

















