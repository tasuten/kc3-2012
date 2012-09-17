program fibo_arr
!  !から行末まではコメントとして扱われる。
!  FOTRANには「固定形式」と「自由形式」という2つの書き方があるらしく、
!  このプログラムは自由形式の方で書いている
!  詳しくは「fortran 自由形式 固定形式」などでググると出てくる

!  「暗黙の型宣言」を行わない。
!  FOTRANではデフォルトでは型宣言を行わない場合
!  [a-ho-z]で始まる変数は実数型、[i-n]で始まる変数は整数型として扱われる
      implicit none
! 整数型のループ変数i
      integer i
! 要素数20の配列の宣言
! 配列の[]はFOTRANでは()となる。又、添字は1から始まる
      integer f(20)
! fib[1]、fib[2]の設定
      f(1) = 1
      f(2) = 1

! 第三項以降を計算して配列の各要素に格納
      do i=3,20
        f(i) = f(i-1) + f(i-2)
      end do
! 配列の中身を表示
      do i=1,20
        print *, f(i)
      end do
end program fibo_arr

! 参考: Fortran入門 <http://www.nag-j.co.jp/fortran/index.html>

