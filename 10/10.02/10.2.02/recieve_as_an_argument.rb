def greeting(&block)
  puts 'おはよう'
  text =  block.call 'こんにちは'
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end

def greeting(&block)
  puts 'おはよう'
  unless block.nil?
    text =  block.call 'こんにちは'
    puts text
  end
  puts 'こんばんは'
end

greeting

def greeting(&block)
  puts 'おはよう'
  if block_given?
    text = yield 'こんにちは'
    puts text
  end
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end

def greeting_ja(&block)
  texts = ['おはよう','こんにちは','こんばんは']
  greeting_common(texts, &block)
end

def greeting_en(&block)
  texts = ['good morinng','hello','good evening']
  greeting_common(texts, &block)
end

def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end

greeting_en do |text|
  text.upcase
end

def greeting(&block)
  puts 'おはよう'
  text = if block.arity == 1
    yield 'こんにちは'
  elsif block.arity == 2
    yield 'こんに', 'ちは'
  end

  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end

greeting do |text1,text2|
  text1 * 2 + text2 * 2
end
