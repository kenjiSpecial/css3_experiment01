require 'sass'

module MyExtension
  def sample(str)
    return Sass::Script::String.new("#{str}")
  end
end


module ::Sass::Script::Functions

  # <tt>0</tt>から<tt>x</tt>の間の乱数を返す。
  # 返り値の単位は<tt>x</tt>と同じ。
  # @param [::Sass::Script::Number] x
  # @return [::Sass::Script::Number]
  def randValInt(x)
    numeric_transformation(x){|value| (rand*value).round}
  end

  def randVal(x)
    numeric_transformation(x){|value| rand*value}
  end



  # キーワード引数をサポート。
  # この場合は引数1つだから不要ではあるが。
  declare :randValInt, args: [:x]
  declare :randVal, args: [:x]
  include MyExtension
end