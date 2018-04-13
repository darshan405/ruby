class A 
def a
	puts "hai"
end
end
class B < A
def b
	puts "hello"

end
end
class C < B
def c
	puts "xyz"
end
end
obj=B.new
obj.b
obj1=C.new
obj1.c
obj1.a

