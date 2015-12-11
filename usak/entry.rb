lines = Array.new
open(__FILE__) do |fl|
  fl.each_line{|line|
    lines.push(line)
  }
  m=15+15
  n=62
  $e = lines.
   map do|ln|
    sz = ln.size
;
    (sz<5?sz+m:sz+n).
     chr().swapcase
  end.join
  $e
  eval "#$e"
end
