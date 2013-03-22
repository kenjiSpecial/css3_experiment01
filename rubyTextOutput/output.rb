File.open('output.txt', 'w') { |file|

  num = 100
  file.write("@for $val from 0 through #{num}{\n\t$caledX: ***update***;\n\t$caledY: ***update***;\n\t$caledZ: ***update***;\n\t$caledscaleVal: ***update***;\n\n")

  for i in 0..num
    #file.write("\t#{i}\n")
    if i == 0
      file.write("\t\t@if $val == #{i}{\n\n")
      file.write("\t\t\t#{i}%{@include transform( translate3d( $caledX, $caledY, $caledZ) scale($caledscaleVal));}\n\n")
      file.write("\t\t}\n")
    else
      file.write("\t\t@else if $val == #{i}{\n\n")
      file.write("\t\t\t#{i*100/num}%{@include transform( translate3d( $caledX, $caledY, $caledZ) scale($caledscaleVal));}\n\n")
      file.write("\t\t}\n")
    end

  end
  file.write("}")
}