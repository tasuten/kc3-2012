/* 複数行コメント(GNU Assembler)
 * sample.s
 * システムコールのexitを10で呼び出すだけ
*/
.text
.globl _main
_main:
# 単行コメント
# exitのシステムコール番号は、Macでは1
movq $1, %rax
# 終了コードとして10を返してみる
movq $10, %rdi
# exitシステムコールを呼び出す
syscall

