File.open('output2.txt', 'w') { |file|

  num = 10

  for i in 1..num

    file.write("@if $val1 == #{i}{\n")
    file.write("\t$P_Y: ($randomVal#{i + 2} - $randomVal#{i+1}) - ($randomVal#{i-1} - $randomVal#{i});\n")
    file.write("\t$Q_Y: ($randomVal#{i-1} - $randomVal#{i}) - $P_Y;\n")
    file.write("\t$R_Y: $randomVal#{i+1} - $randomVal#{i};\n")
    file.write("\t$S_Y: $randomVal#{i};\n}\n")
    file.write("\n")

  end
}