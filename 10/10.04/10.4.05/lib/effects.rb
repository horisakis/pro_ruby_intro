module Effects
  def self.reverse
    ->(word) do
      word.split(" ").map(&:reverse).join(" ")
    end
  end

  def self.echo(rate)
    ->(word) do
      word.chars.map{|c| c == " " ? c : c * rate }.join
    end
  end
end
