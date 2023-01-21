defmodule JapaneseConvTest do
  use ExUnit.Case
  doctest JapaneseConv

  test "full to half" do

    result = JapaneseConv.full2Half("アイウエオ")
    assert "ｱｲｳｴｵ" == result

    result = JapaneseConv.full2Half("あイウエオ")
    assert "あｲｳｴｵ" == result

    result = JapaneseConv.full2Half("がギグげご")
    assert "がｷﾞｸﾞげご" == result

    result = JapaneseConv.full2Half("AＢｃデ５")
    assert "ABcﾃﾞ5" == result
  end


  test "full to half numbers" do

    result = JapaneseConv.full2HalfNum("アイウエオ")
    assert "アイウエオ" == result

    result = JapaneseConv.full2HalfNum("AＢｃデ５")
    assert "AＢｃデ5" == result
  end

  test "half to full" do

    result = JapaneseConv.half2Full("ｱｲｳｴｵ")
    assert "アイウエオ" == result

    result = JapaneseConv.half2Full("あｲｳｴｵ")
    assert "あイウエオ" == result

    result = JapaneseConv.half2Full("がｷﾞｸﾞげご")
    assert "がギグげご" == result
    IO.inspect(result)
  end
end
