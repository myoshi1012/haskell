* 型シノニム
既存の型に新しい名前をつけることができる。
Example:

> type Roots = (Float, Float)
> type Distance = Float

型変数でパラメータ化もできる。
Example:

> type Pairs a = (a,a)

------------------------------------------
2.6.1
* New Type
型シノニムは元の型クラスのインスタンス宣言を受け継ぐ。
例えば、Float上で定義されている(==)はRootsにも受け継がれる。
ただしこれは、Angle上の(==) をmod 2pi で定義したい場合などには問題になる。

解決の方法として、newtypeを使う:

> newtype Angle = MkAngle Float

こうすると、新しく型クラスのインスタンスを宣言できる。
例えば、MkAngle Bottom等。

------------------------------------------
練習問題
2.6.1
相当性検査演算は定義できるが、(==)とすることはできない。
型シノニムとして定義している場合、元の型クラスの(==)が受け継がれる。

2.6.2.

> data Jane    = MkJane Int
> newtype Dick = MkDick Int

> comp :: Either Jane Dick -> String
> comp (Left (MkJane _)) = "Jane"
> comp (Right (MkDick _)) = "Dick"
