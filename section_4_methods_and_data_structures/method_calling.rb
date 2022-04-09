def foo(arg)
 2* arg
end

def bar
    5
end

def baz
    10 + foo(bar)
end

puts baz