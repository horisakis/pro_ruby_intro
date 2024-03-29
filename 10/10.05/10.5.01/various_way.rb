add_proc = Proc.new {|a,b|a+b}

add_proc.call 10, 20

add_proc.yield 10, 20

add_proc.(10, 20)

add_proc[10, 20]

add_proc === [10, 20]

def judge(age)
  adult = Proc.new {|n| n > 20}
  child = Proc.new {|n| n < 20}

  case age
  when adult
    puts "大人です"
  when child
    puts "子供です"
  else
    puts "二十歳です"
  end
end

judge 25
judge 18
judge 20
