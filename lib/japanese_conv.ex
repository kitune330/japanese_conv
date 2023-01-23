defmodule JapaneseConv do
  @moduledoc """
  Documentation for `JapaneseConv`.
  """

  @doc """
  カナ、数字、アルファベットの全角を半角に変換

  ## Examples

      iex> JapaneseConv.full2Half("アイウエオ０Ａｂ")
    
  """
  def full2Half(str) do
    charList = String.graphemes(str)
    for (char <- charList) do
            c = charSet()[char]
            if is_nil(c) do char else c end
        end
    |> List.to_string()
  end

  @doc """
  数字の全角を半角に変換

  ## Examples

      iex> JapaneseConv.full2Half("０１２３")
      

  """
  def full2HalfNum(str) do
    charList = String.graphemes(str)
    for (char <- charList) do
            c = numberSet()[char]
            if is_nil(c) do char else c end
        end
    |> List.to_string()
  end

  @doc """
  カナ、数字、アルファベットの半角角を全角に変換

  ## Examples

      iex> JapaneseConv.full2Half("ｱｲｳｴｵ0Ab")
      

  """
  def half2Full(str) do
    charList = String.graphemes(str)

    for (char <- charList) do
      
      c = revCharSet()[char]
      if is_nil(c) do char else c end
    end
    |> List.to_string()
  end

  defp charSet() do
    Map.new()
    |> Map.merge(kanaSet())
    |> Map.merge(alphaSet())
    |> Map.merge(numberSet())
  end

  defp kanaSet() do
    %{"ァ" => "ｧ",
      "ア" => "ｱ",
      "ィ" => "ｨ",
      "イ" => "ｲ",
      "ゥ" => "ｩ",
      "ウ" => "ｳ",
      "ェ" => "ｪ",
      "エ" => "ｴ",
      "ォ" => "ｫ",
      "オ" => "ｵ",
      "カ" => "ｶ",
      "ガ" => "ｶﾞ",
      "キ" => "ｷ",
      "ギ" => "ｷﾞ",
      "ク" => "ｸ",
      "グ" => "ｸﾞ",
      "ケ" => "ｹ",
      "ゲ" => "ｹﾞ",
      "コ" => "ｺ",
      "ゴ" => "ｺﾞ",
      "サ" => "ｻ",
      "ザ" => "ｻﾞ",
      "シ" => "ｼ",
      "ジ" => "ｼﾞ",
      "ス" => "ｽ",
      "ズ" => "ｽﾞ",
      "セ" => "ｾ",
      "ゼ" => "ｾﾞ",
      "ソ" => "ｿ",
      "ゾ" => "ｿﾞ",
      "タ" => "ﾀ",
      "ダ" => "ﾀﾞ",
      "チ" => "ﾁ",
      "ヂ" => "ﾁﾞ",
      "ッ" => "ｯ",
      "ツ" => "ﾂ",
      "ヅ" => "ﾂﾞ",
      "テ" => "ﾃ",
      "デ" => "ﾃﾞ",
      "ト" => "ﾄ",
      "ド" => "ﾄﾞ",
      "ナ" => "ﾅ",
      "ニ" => "ﾆ",
      "ヌ" => "ﾇ",
      "ネ" => "ﾈ",
      "ノ" => "ﾉ",
      "ハ" => "ﾊ",
      "バ" => "ﾊﾞ",
      "パ" => "ﾊﾟ",
      "ヒ" => "ﾋ",
      "ビ" => "ﾋﾞ",
      "ピ" => "ﾋﾟ",
      "フ" => "ﾌ",
      "ブ" => "ﾌﾞ",
      "プ" => "ﾌﾟ",
      "ヘ" => "ﾍ",
      "ベ" => "ﾍﾞ",
      "ペ" => "ﾍﾟ",
      "ホ" => "ﾎ",
      "ボ" => "ﾎﾞ",
      "ポ" => "ﾎﾟ",
      "マ" => "ﾏ",
      "ミ" => "ﾐ",
      "ム" => "ﾑ",
      "メ" => "ﾒ",
      "モ" => "ﾓ",
      "ャ" => "ｬ",
      "ヤ" => "ﾔ",
      "ュ" => "ｭ",
      "ユ" => "ﾕ",
      "ョ" => "ｮ",
      "ヨ" => "ﾖ",
      "ラ" => "ﾗ",
      "リ" => "ﾘ",
      "ル" => "ﾙ",
      "レ" => "ﾚ",
      "ロ" => "ﾛ",
      "ワ" => "ﾜ",
      "ヲ" => "ｦ",
      "ン" => "ﾝ",
      "ー" => "ｰ"
      }
  end
  defp alphaSet() do 
    %{"Ａ" => "A",
      "Ｂ" => "B",
      "Ｃ" => "C",
      "Ｄ" => "D",
      "Ｅ" => "E",
      "Ｆ" => "F",
      "Ｇ" => "G",
      "Ｈ" => "H",
      "Ｉ" => "I",
      "Ｊ" => "J",
      "Ｋ" => "K",
      "Ｌ" => "L",
      "Ｍ" => "M",
      "Ｎ" => "N",
      "Ｏ" => "O",
      "Ｐ" => "P",
      "Ｑ" => "Q",
      "Ｒ" => "R",
      "Ｓ" => "S",
      "Ｔ" => "T",
      "Ｕ" => "U",
      "Ｖ" => "V",
      "Ｗ" => "W",
      "Ｘ" => "X",
      "Ｙ" => "Y",
      "Ｚ" => "Z",
      "ａ" => "a",
      "ｂ" => "b",
      "ｃ" => "c",
      "ｄ" => "d",
      "ｅ" => "e",
      "ｆ" => "f",
      "ｇ" => "g",
      "ｈ" => "h",
      "ｉ" => "i",
      "ｊ" => "j",
      "ｋ" => "k",
      "ｌ" => "l",
      "ｍ" => "m",
      "ｎ" => "n",
      "ｏ" => "o",
      "ｐ" => "p",
      "ｑ" => "q",
      "ｒ" => "r",
      "ｓ" => "s",
      "ｔ" => "t",
      "ｕ" => "u",
      "ｖ" => "v",
      "ｗ" => "w",
      "ｘ" => "x",
      "ｙ" => "y",
      "ｚ" => "z",
      "０" => "0",
      "１" => "1",
      "２" => "2",
      "３" => "3",
      "４" => "4",
      "５" => "5",
      "６" => "6",
      "７" => "7",
      "８" => "8",
      "９" => "9"}
  end 

  defp numberSet() do 
    %{"０" => "0",
      "１" => "1",
      "２" => "2",
      "３" => "3",
      "４" => "4",
      "５" => "5",
      "６" => "6",
      "７" => "7",
      "８" => "8",
      "９" => "9"}
  end 

  defp revCharSet() do
    for {k, v} <- charSet() do
      {v,k}
    end
    |> Enum.into(%{})
  end 
end
