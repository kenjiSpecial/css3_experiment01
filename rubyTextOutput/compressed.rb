File.open('compressedoutput.txt', 'w') { |file|

  num01 = 10
  num02 = 10

  file.write("@for $val1 from 0 through #{num01}{\n\t@for $val2 from 0 through #{num01}{\n\t\t$caledX: ***update***;\n\t$caledY: ***update***;\n\t$caledZ: ***update***;\n\t$caledscaleVal: ***update***;\n\n")

  for i in 0..(num01 - 1)
    for j in 0..(num02 - 1)
      val = j + i * num01
      if val == 0
        file.write("\t\t@if $val == #{val}{")
        file.write("#{val}%{@include transform( translate3d( $caledX, $caledY, $caledZ) scale($caledscaleVal));}")
        file.write("}\n")
      else
        file.write("\t\t@else if $val == #{val}{")
        file.write("#{val}%{@include transform( translate3d( $caledX, $caledY, $caledZ) scale($caledscaleVal));}")
        file.write("}\n")
      end
    end
  end

  val = 100
  file.write("\t\t@else if $val == #{val}{")
  file.write("#{val}%{@include transform( translate3d( $caledX, $caledY, $caledZ) scale($caledscaleVal));}")
  file.write("}\n")

  file.write("\n\t}\n}")
}

