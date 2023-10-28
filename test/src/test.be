#-	@namespace Foo
	A fascinating and senseless module.
-#

import re

class Foo:object
    #- Foo is yet another random class. -#
    def init()
        #- Constructs Foo. -#
    end
    
    def add(a, b)
        #- Makes $a say $b.
        
            @param a A persons name
            @param b Something to say
            
            @returns A string containing "$a says '$b!'".
        -# 
        return format("%s says '%s!'",a, b)
    end
end

class Bar:Foo
	#- Bar -#
end

class Fnord:Foo
	#- Fnord -#
end

class Hans:Bar
	#- Hans -#
end

def multiline1(v1,
		v2,
		v3)
	#- comment-# 
end

def multiline2  (  
		v1,
		v2,
		v3)
	#- comment \\brief yay-# 
end

class MyClass
	def init(arg)
		#-  Class constructor
		
		Example of how you should do if you override
		the constructor in a subclass.
		
		@code
		class MySubClass(MyClass)
			TOTO = "something"	# some comment
			
			def __init__(self, arg)
				MyClass.__init__(self, param1)
				# your own code follows here
		@endcode
		-# 
    end
end

def test0()
	#- not
	brief-# 
end

def test1()
	#- -# 
end

def test2()
	#- 
	-# 
end

def test3()
	#- 
-# 
end

def test4()
	#- foo
	bar
foobar
	fnord
		asdf
			lalalla-# 
end

class Foo
	#- class doc-# 
	def test5()
		#- AASDF-# 
    end
	
	def test6()
		#- FOOBAR-# 
    end
end
##
# doxy string
def test7()
	#- doc string-# 
	#- more doc string-# 
	
	#- even much more-# 
end

def test8()
	#- 	my doc
		string
	and mine alone
	-# 
end

def test9()
	#- Shalalalala """ a comment -#
end
def test10()
	#-  Blub ''' and the same reverse -# 
end

def test11()
	#- 
	Short docstring sandwich.
	-# 
end

def test12()
	#- 
	Long docstring sandwich.

	Here we've got more lines beyond the
	initial brief.
	-# 
end
class Fnord

	def init(another_param,
				 yet_another_param)
		#- This should be recognized -# 
    end
end
